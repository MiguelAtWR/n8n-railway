# Start from the official n8n image
FROM n8nio/n8n:latest

# Set the working directory to the node user's home
WORKDIR /home/node

# Copy the files
COPY --chown=node:node n8n-module-alias.js .
COPY --chown=node:node package.json .

# --- ADD THIS DEBUGGING LINE ---
RUN ls -la /home/node

# Switch to the non-privileged 'node' user
USER node

# Run npm install
RUN npm install
