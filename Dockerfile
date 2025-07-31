# Start from the official n8n image
FROM n8nio/n8n:latest

USER root
#RUN npm install @aws-sdk/client-textract
RUN npm install @aws-sdk/client-s3
RUN npm install moment
RUN npm install lodash
RUN npm install axios
USER node
