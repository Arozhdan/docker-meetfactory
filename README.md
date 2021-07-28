# Docker-meetfactory

## Setup instructions

This is the step-by-step instruction explaining the development process, publishing and syncing the database.

- Posgtres
- Strapi
- Frontend (Nuxt.js)

## Local development

- ###### Clone develop branch
- ###### Sync databases (if needed)
  - Manually with Filezilla (copy postgress folder into the root dir of the project ) / may need to reset the access rights
    **OR**
  - Script:
    `sudo sh sync.sh`
- ###### Start docker-compose
  `docker-compose -f docker-compose-dev.yml up`
  This way we set docker compose to take configurations from dev file.

## Publishing

##### **DO NOT! PUSH TO MASTER**

- ###### Push to develop branch
  This will start action runner, that rebuild the project on the server
- ###### Chech if all works fine
- ###### Merge develop branch with master
  This will start action runner, that updates the project on production server
