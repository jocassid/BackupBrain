[README.md](README.md)

# Docker Overview

<style>
    /*  PyCharm doesn't seem to like external stylesheets */
    table.commands > thead > tr > th:nth-of-type(1){
        width: 40%;
    }

</style>

## Reference
* Docker CLI: (https://docs.docker.com/engine/reference/commandline/cli/
* Dockerfile: https://docs.docker.com/engine/reference/builder/
* Volumes: https://docs.docker.com/engine/storage/volumes/
* My notes from the book I'm reading: https://docs.google.com/document/d/17vFd-ejqFVAITu_Bfn8Mj_L7LJjvmxhtjEwPI_VEy9M/

## Articles
* https://www.freecodecamp.org/news/how-to-dockerize-your-django-project/
* Postgres & Docker: https://wiki.postgresql.org/wiki/DockerizingPostgres
* Volumes vs. Bind Mounts: (https://dev.to/caffinecoder54/docker-volumes-vs-bind-mounts-when-to-use-each-1ah4) 
It recommends using volumes for database service.  Consensus seems to be volumes for production and bind mounts for 
development where you want code changes take effect w/out rebuilding the image and restarting the 
container (i.e. developer's code lives in a binds mount)

