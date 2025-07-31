# Start from the official n8n image
FROM n8nio/n8n:latest

# The n8n image sets the working directory to /data, so we don't need to.

# Switch to the root user to have permissions to install
USER root

# First, copy your package.json file into the container
COPY package.json .

# Now, run npm install. It will read package.json and install the
# packages into a local node_modules folder inside /data
RUN npm install

# IMPORTANT: Switch back to the non-privileged 'node' user
# that n8n runs as.
USER node
