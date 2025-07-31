# Start from the official n8n image
FROM n8nio/n8n:latest

# Set the working directory to the node user's home
WORKDIR /home/node

# Copy only the package manifest and set its owner
COPY --chown=node:node package.json .

# Switch to the non-privileged 'node' user
USER node

# Run npm install to create the node_modules directory
RUN npm install
