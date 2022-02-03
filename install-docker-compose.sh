# Install Docker Compose

# Get the docker compose lates version number:
# COMPOSE_VERSION=`git ls-remote https://github.com/docker/compose | grep refs/tags | grep -oE "[0-9]+\.[0-9][0-9]+\.[0-9]+$" | sort --version-sort | tail -n 1`

# Download version 2.2.3 of docker compose and save the executable file at /user/local/bin/docker-compose, which will make the software globally available as docker-compose:
sudo curl -L "https://github.com/docker/compose/releases/download/v2.2.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Set correct permissions so that the docker-compose command is executable:
sudo chmod +x /usr/local/bin/docker-compose
