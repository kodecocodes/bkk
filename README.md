# `bkk`: raywenderlich.com Book Repo Template

This repo is a template for starting new book projects. It is structured
appropriately, contains some sample content, and is integrated with `robles`,
the raywenderlich.com automatic book publishing system.

To use this repo, complete the following:

1. Click the __Use this template__ button above to create a new repo from this
   template. Choose an appropriate name and be sure to set it as private within
   the `raywenderlich` organisation.
2. Add the following secrets to the newly created repo. Speak to engineering to
   find out what they are. Or to ask them to do it:
   - `ALEXANDRIA_SERVICE_API_TOKEN_PRODUCTION`
   - `ALEXANDRIA_SERVICE_API_TOKEN_STAGING`
   - `AWS_ACCESS_KEY_ID_PRODUCTION`
   - `AWS_ACCESS_KEY_ID_STAGING`
   - `AWS_SECRET_ACCESS_KEY_PRODUCTION`
   - `AWS_SECRET_ACCESS_KEY_STAGING`
   - `SLACK_BOT_TOKEN`
   - `SLACK_WEBHOOK_URL`
3. Ensure that the branch you have created is called `editions/1.0`, and not
   `master`. If `master` exists, delete it.
4. Create the appropriate materials repo. It should be named
   `raywenderlich/SKU-materials`, where `SKU` is the name of this repo. The
   materials repo needs to have a similar branching structure, but be __public__.
4. Edit __publish.yaml__ to populate all the fields as appropriate.
5. Edit __README.md__ to remove these instructions, and leave the remaining
   details.


# <BOOK NAME HERE>

This repo contains the source for this book.

> __NB:__ The materials (projects etc) are __not__ part of this repo. They should
> be stored in a separate _SKU-materials_ repo.


## How to use this repo

TODO


## How to create a new edition

TODO
