# docker-pydio
Dockerfile for running Pydio.

## Simple start

    docker run -d -p 80:80 javierprovecho/docker-pydio

Copy the credetentials of MySQL DB with:

    docker logs <container-id>

Launch your favorite web browser and go to `http://<server-ip>/pydio`.
Use the set-up wizzard to install Pydio. Select MySQL as storage option.
Use `pydio` (lowercase) as the database name. Use the previous credentials
to authenticate with MySQL.

Copy the modified `.htaccess`. Log into the container using:
    docker exec -it <container-id> bash

Use vi or install your favourite text editor to paste the content where the
installer has pointed before.

Reload the webpage at your browser.

## TODO

- Instructions for volumes.
- Automatize the `.htaccess` part.

