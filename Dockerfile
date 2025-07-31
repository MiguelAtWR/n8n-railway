FROM n8nio/n8n:latest

# WORKDIR /data

# RUN npm install cheerio axios moment

USER root
  RUN npm install -g @aws-sdk/client-textract
  RUN npm install -g moment
  RUN npm install -g lodash
  RUN npm install -g axios
USER node
