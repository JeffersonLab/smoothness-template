# Template Usage

## Steps

### 1. Create new Repo with Template
When viewing the `smoothness-template` repo in GitHub, click the "Use this template" button to create a new repo

### 2. Search and Replace app name
Search the code of your new repo for `template` and replace with your app name.

### 3. Configure GitHub Repo Secrets

#### A. DockerHub
The Action workflow by default will attempt to publish an image to the JeffersonLab DockerHub on app release.  For this to work you need to add two Action Secrets via the Repo Settings on GitHub for your new repo.  The names are:

- DOCKERHUB_USER
- DOCKERHUB_TOKEN

You must have a DockerHub account and be a member of the JeffersonLab DockerHub organization.   Use DockerHub web page and generate a Personal Access Token.

#### B. acctest.acc.jlab.org
The Action workflow by default will attempt to automatically deploy your app to the Jefferson Lab `acctest.acc.jlab.org` test server on app release.  For this to work you need to add two Action Secrets via the Repo Settings on GitHub for your new repo.  The names are:

- DEPLOYER_USERNAME
- DEPLOYER_TOKEN

Reach out to me obtain these.  There is no self-service at the moment.  We use Red Hat Keycloak for security and the auto-deploy action authenticates with Keycloak (which doesn't currently provide self-service of Personal Access Tokens), so an admin must do this.  We'll need to perform some setup on the acctest.acc.jlab.org server as well at this time. 

