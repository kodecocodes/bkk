# `bkk`: raywenderlich.com Book Repo Template

This repo is a template for starting new book projects. It is structured
appropriately, contains some sample content, and is integrated with `robles`,
the raywenderlich.com automatic book publishing system.

To use this repo, complete the following:

1. Click the __Use this template__ button above to create a new repo from this
   template. Choose an appropriate name and be sure to set it as **private**
   within
   the `raywenderlich` organization.
2. Use robles to publish the required secrets (see Confluence).
3. Use https://github.com/raywenderlich/bkk-materials to create a materials repo
   to accompany this book repo. Unlike this repo, the materials should be public.
4. Edit __publish.yaml__ to populate all the fields as appropriate.
5. Edit __vend.yaml__ to populate all the fields as appropriate.
6. Edit __README.md__ (this file) to remove these instructions, and leave the
remaining details below.

Don’t forget to set up the GitHub book team with **Write** access to this repo.

Once you’ve done the above and removed these instructions, it’s a good idea to
now go create the `sku-materials` repo from the
[https://github.com/raywenderlich/bkk-materials](https://github.com/raywenderlich/bkk-materials) repo so you don’t forget.

Unlike this repo, the materials repo should be public.

=== REMOVE THIS LINE AND EVERYTHING ABOVE IT AFTER YOU CLONE THIS REPO ===

# <TODO: FILL IN BOOK NAME HERE>

This repo contains the markdown, images and other elements that compose the body
of this book.

> __NB:__ The downloadable materials that accompany the book (source code,
projects, assets, etc) must __not__ be stored in this repo. They should
> be stored in a separate repo, here: <TODO: Update URL with the
appropriate materials repo location> [https://github.com/raywenderlich/bkk-materials](https://github.com/raywenderlich/bkk-materials).

## Useful Tools

The tooling supporting book creation is provided via the way of a docker container. As such
you need to ensure that you have docker installed on your local machine. To discover how
to do this, please visit [Docker Desktop](https://www.docker.com/products/docker-desktop).

### Linting

You can use the `robles` linter to check that you don't have mistakes in your metadata,
and image locations.

In a terminal, navigate to this repo, and then run the following command:

```
$ bin/lint
```

The first time this runs (and whenever there is an updated container available), this will
download the latest version of the docker container. It will then run the linting process
and give you directions to any failures or warnings.

### Local Preview

`robles` has an embedded web server that allows you to preview what the completed chapter
will look like when deployed to raywenderlich.com.

> __Note:__ This is necessarily __not identical__ to the online version, however it serves as
> a good approximation, allowing you to address major stylistic issues before publication.

In a terminal, navigate to this repo, and then run the following command:

```
$ bin/serve
```

This will start a webserver on your local machine at http://localhost:4567/. Navigate to this
address with your web browser. From here you can use the table of contents to navigate to the
chapter of your choice.

This server watches the filesystem, so as you make changes and save them, the page in your
browser will automatically refresh.

To stop the server, go back to the terminal and press __Ctrl + C__.


## How to set up new chapter branches in this repo

If you’re adding a chapter to a new book (editions/1.0), or a new chapter to an
existing book, use these instructions:

1. Clone this repository to your local machine.
2. Using Terminal or a shell console, navigate into the directory that contains
this repo.
3. For each new chapter directory and branch you would like to create, execute
the following command: `./scripts/make-codex-subdirectory.sh 00-chapter-name-here`,
replacing `00-chapter-name-here` with the (mandatory) zero-padded chapter number
and hyphenated lowercase name of the chapter. Examples are "01-introduction"
and "22-gitignore-after-the-fact".
4. Repeat the above command for all chapter branches you wish to create.
5. When you’ve completed that, push all of the branches to the remote by
executing `git push --all`.
6. Repeat this process in the associated materials repo.

## How to set up branches for existing chapters

If you’re creating a branch for a chapter that already exists in a book, use
these instructions:

1. Clone this repository to your local machine.
2. Using Terminal or a shell console, navigate into the directory that contains
 this repo.
3. For each chapter branch you would like to create, execute the following
 command: `./scripts/make-codex-branch.sh 00-chapter-name-here`, replacing
 `00-chapter-name-here` with the actual zero-padded chapter number and
 hyphenated lowercase name of the chapter. Examples are "01-introduction"
 and "22-gitignore-after-the-fact". This won’t do anything to the existing
 directory, except to create a branch to hold the updates for this edition.
4. Repeat the above command for all chapter branches you wish to create.
5. When you’ve completed that, push all of the branches to the remote by
executing `git push --all`.
6. Repeat this process in the associated materials repo.

## How to create a new edition

Minor changes should be part of the current edition. On merging branches to an
 existing published, `editions/x.x` branch, those changes will be auto-published.

Major new releases have specific launch dates, and should be created thusly:

1. Create a new branch off the latest `editions/x.x` branch, with the new
edition number. For example, if your latest published edition is `editions/1.2`,
 one would branch off `editions/1.2` to create the `editions/2.0`
   edition.
2. Set the new branch as the default branch in Settings. This will ensure that
   people arriving to the site, or anyone cloning the repository, will be shown
    the branch that is currently in progress.
3. Repeat this process in the associated materials repo.
4. Update __publish.yaml__ with any changes. As a minimum, the following fields
   will require an update to reflect the new edition details:
   - `edition`
   - `released_at`
   - `materials_url`
5. Create any chapter/work branches you desire off the new branch. When they
   are merged back in, the book will auto-deploy, whilst retaining the previous
   edition.

## How to create an early-access release

This process is for creating a release of a book, whilst an edition is being
worked on. The flow is broadly similar to the aforementioned flow for creating
a new edition, with some subtle changes.

1. Create a new branch off the __currently in progress__ branch. e.g. assuming
   you're working on the 2nd edition, i.e. `editions/2.0` and you'd like to create
   the first early access, you'd create a new branch called `editions/2.0.ea1`
   off `editions/2.0`.
2. Do not change the default branch.
3. Continue working on non-EA work on the `editions/2.0` branch.
4. Update metadata in __publish.yaml__ for the EA release on the EA branch. This
   will automatically be published.
5. If required, be sure to create an equivalent branch in the materials repo.
