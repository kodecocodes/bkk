#!/bin/bash

# Need one and only one parameter
if [ $# -ne 1 ]; then
  echo "Usage: $0 <new branch name>"
  echo "No spaces or such funny characters are allowed."
  exit 1
fi

# Make sure we're inside a git directory
git status >/dev/null 2>&1
if [ $? -ne 0 ]; then
  echo "error: run this script from inside a git repository"
  exit 1
fi

BRANCH=`git rev-parse --abbrev-ref HEAD`

isEdition=`expr "$BRANCH" : 'editions'`

if [ $isEdition -ne 8 ]; then
  echo "WARNING - you're starting a new branch from $BRANCH"
  echo "That doesn't look like an editions/x.x branch!"
  read -p "Hit Ctrl-C to cancel, or RETURN to continue" choice
fi

# Checkout a new branch, make a dir of the same name, and enter it
git checkout -b $1
mkdir $1
pushd $1
# Create the directory structure within, and ensure git'll keep it. We only need images.
mkdir -p images
touch images/.keep
# Extract the chapter number from the directory name, and create a template file
chapterNumber=$((10#${1:0:2}))
cat << EOF > $1.markdown
\`\`\`metadata
number: "$chapterNumber"
title: "Chapter $chapterNumber: Chapter Title Here"
section: 1
free: false
author: TODO: By Your Name
authors:
  # These are applied on a per-chapter basis. If you would like to apply a role to the entire
  # book (i.e. every chapter), use the authors attribute in publish.yaml.
  # Roles: fpe, editor, tech_editor, author, illustrator
  # Use your rw.com username.
  - username: TODO:yourusername
    role: author
description: |
  TODO: Author: Please provide 1-2 sentences describing, at a high-level, what this chapter will cover. The description can be
  on multiple lines, provided you respect the indentation.
\`\`\`

# Chapter $chapterNumber: Chapter Title Here

EOF
# Back to whence you started
popd
# Commit the new chapter to git
git add $1
git commit -m "Adding $1" $1
git checkout $BRANCH

echo Added directory, branch, and initial commit for "$1".
echo "You're now back on the '$BRANCH' branch."

