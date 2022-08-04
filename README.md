# SDP Notebooks

You can find a collection of Jupyter notebooks in this repository,
which were created as a guide and help to run the Science Data Processor (SDP).

You can access these via BinderHub. For more details look at the 
documentation pages:

[![Documentation Status](https://readthedocs.org/projects/ska-telescope-ska-sdp-notebooks/badge/?version=latest)](https://developer.skao.int/projects/ska-sdp-notebooks/en/latest/?badge=latest)

## Standard CI machinery

This repository is set up to use the
[Makefiles](https://gitlab.com/ska-telescope/sdi/ska-cicd-makefile) and [CI
jobs](https://gitlab.com/ska-telescope/templates-repository) maintained by the
System Team. For any questions, please look at the documentation in those
repositories or ask for support on Slack in the #team-system-support channel.

To keep the Makefiles up to date in this repository, follow the instructions
at: https://gitlab.com/ska-telescope/sdi/ska-cicd-makefile#keeping-up-to-date

## Creating a new release

When you are ready to make a new release:

  - Check out the master branch
  - Create an issue in the [Release Management](https://jira.skatelescope.org/projects/REL/summary) project
  - Bump the `.release` file version with
    - `make bump-patch-release`,
    - `make bump-minor-release`, or
    - `make bump-major-release`
  - Manually update the documentation version in `docs/src/conf.py`
  - Create the git tag with `make git-create-tag`
  - Push the changes using `make git-push-tag`


