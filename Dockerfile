# Start from the official n8n image
FROM n8nio/n8n:latest

# Switch to the root user to have permissions to install
USER root

# Copy your package.json file into the container
COPY package.json .

# Run npm install to add packages
RUN npm install

# BEST PRACTICE: Change ownership of all files in /data to the node user
RUN chown -R node:node /data

# Switch back to the non-privileged 'node' user that n8n runs as
USER node
