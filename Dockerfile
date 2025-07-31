# Start from the official n8n image
FROM n8nio/n8n:latest

# Set the working directory to the node user's home
WORKDIR /home/node

# Copy the new startup script and the package manifest,
# setting the 'node' user as the owner immediately.
COPY --chown=node:node n8n-module-alias.js .
COPY --chown=node:node package.json .

# Switch to the non-privileged 'node' user
USER node

# Run npm install to create the node_modules directory
RUN npm install
