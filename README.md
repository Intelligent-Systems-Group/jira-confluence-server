# jira-confluence-server
Infrastructure for deploying the group-internal jira and confluence server with ssl encryption.

# Prerequisites:

- The package docker-ce and docker-compose need to be installed
- Resolve all ToDo's
- Create the directory /data with mkdir

# ToDo's

- In the docker-compose.yml set the mysql root user password. (Once for the mysql service and once for the phpMyAdmin service)
- In the traefik.toml first activate uncomment the [web.auth.basic] section and add a user with a hashed password. This will secure the traefik dashboard via htaccess from unauthorized access. Set the value of the email in the [acme] section as this is required by let's encrypt certificate creation.

# Quick Start

Change into the directory of this github repository and run docker-compose up -d
This will download and run all docker containers. Now you only need to setup Jira and Confluence as usual.

# Upgrade Jira and Confluence 

- Make a backup of the /data directory
- run the restart.sh script. This will automatically pull the newest available version of Jira and Confluence.
