# `bkk`: raywenderlich.com Book Repo Template

This repo is a template for starting new book projects. It is structured
appropriately, contains some sample content, and is integrated with `robles`,
the raywenderlich.com automatic book publishing system.

To use this repo, complete the following:

1. Click the __Use this template__ button above to create a new repo from this
   template. Choose an appropriate name and be sure to set it as private within
   the `raywenderlich` organisation.
2. Use robles to publish the required secrets (see Confluence).
3. Use https://github.com/raywenderlich/bkk-materials to create a materials repo
   to accompany this book repo. Unlike this repo, the materials should be public.
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

Minor changes should be part of this edition. They will be auto-published on
merging to the appropriate `editions/x.x` branch.

Major new releases have specific launch dates, and should be created thusly:

1. Create a new branch off the latest `editions/x.x` branch, with the new edition
   number. e.g., one might branch off `editions/1.2` to create the `editions/2.0`
   edition.
2. Set the new branch as the default branch in Settings. This will ensure that
   people arriving will be shown the branch that is currently in progress.
3. Repeat this process in the associated materials repo.
4. Update __publish.yaml__ with any changes. As a minimum, the following fields
   will require an update:
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
