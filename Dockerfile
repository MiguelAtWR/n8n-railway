# Start from the official n8n image
FROM n8nio/n8n:latest

# Set the working directory to the node user's home.
# This is a safe directory that the user owns.
WORKDIR /home/node

# Use the --chown flag to copy the file and set its
# owner to the 'node' user in a single step.
COPY --chown=node:node package.json .

# Switch to the non-privileged 'node' user.
USER node

# Now, run npm install as the 'node' user.
# This creates a 'node_modules' folder inside /home/node
# with the correct permissions automatically.
RUN npm install
