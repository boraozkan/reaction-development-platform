###############################################################################
### Reaction Platform Configuration
###
### This file defines configuration used in the Makefile.
### You may add and/or override these values with your own custom configuration
### in `config.local.mk`.
###
### Please see GNU Makes multi-line variable documentation for more info.
### https://www.gnu.org/software/make/manual/html_node/Multi_002dLine.html
###############################################################################


# List of tools that must be installed.
# A simple check to determine the tool is available. No version check, etc.
define REQUIRED_SOFTWARE
docker \
docker-compose \
git \
node \
yarn
endef

# Defined here are the subprojects in a comma-separated format
# GIT_REPO_URL,SUBDIR_NAME,TAG
# GIT_REPO_URL is the URL of the git repository
# SUBDIR_NAME is just the directory name itself
# TAG is the git tag or branch to checkout
# Projects will be started in this order
define SUBPROJECT_REPOS
git@github.com:/boraozkan/reaction-hydra.git,reaction-hydra,trunk \
git@github.com:/boraozkan/reaction.git,reaction,trunk \
git@github.com:/boraozkan/example-storefront.git,example-storefront,trunk
endef

# List of user defined networks that should be created.
define DOCKER_NETWORKS
auth.reaction.18.219.58.136 \
api.reaction.18.219.58.136 \
streams.reaction.18.219.58.136
endef

HOOK_DIR=.reaction/project-hooks
