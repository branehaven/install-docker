# Install Docker Compose

# Get the docker compose lates version number:
# COMPOSE_VERSION=`git ls-remote https://github.com/docker/compose | grep refs/tags | grep -oE "[0-9]+\.[0-9][0-9]+\.[0-9]+$" | sort --version-sort | tail -n 1`

# Download version 2.2.3 of docker compose and save the executable file at ~/.docker/docker-cli-plugins/:
mkdir -p ~/.docker/cli-plugins/
curl -SL https://github.com/docker/compose/releases/download/v2.2.3/docker-compose-linux-x86_64 -o ~/.docker/cli-plugins/docker-compose

# Set correct permissions so that the docker-compose command is executable:
chmod +x ~/.docker/cli-plugins/docker-compose

Test your installation:
docker compose version
