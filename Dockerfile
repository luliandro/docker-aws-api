FROM node:20-alpine

# Install aws cli
RUN apk add --no-cache wget unzip groff less python3 py3-pip jq && \
    wget "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -O "awscli-bundle.zip" && \
    unzip awscli-bundle.zip && \
    ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws && \
    rm -rf awscli-bundle awscli-bundle.zip && \
    aws --version
