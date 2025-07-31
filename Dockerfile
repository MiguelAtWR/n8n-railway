# Start from the official n8n image
FROM n8nio/n8n:latest

# Switch to the root user to have permissions to install files
USER root

# Copy your package.json file into the container's working directory (/data)
COPY package.json .

# Run npm install to add packages locally
RUN npm install

# CRITICAL STEP: Change ownership of only the files we just added.
# This avoids the permission error on the protected /data directory itself.
RUN chown -R node:node /data/node_modules /data/package.json

# Switch back to the non-privileged 'node' user that n8n runs as
USER node
