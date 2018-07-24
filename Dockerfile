FROM node:10-slim
LABEL authors="Bruno Scrok Brunoro"
LABEL email="bruno.sbrunoro@gmail.com"

RUN npm install -g @angular/cli@6.0.0
RUN npm install -g firebase-tools
RUN curl https://dl.google.com/dl/cloudsdk/release/google-cloud-sdk.tar.gz > /tmp/google-cloud-sdk.tar.gz
RUN mkdir -p /usr/local/gcloud \
  && tar -C /usr/local/gcloud -xvf /tmp/google-cloud-sdk.tar.gz \
  && /usr/local/gcloud/google-cloud-sdk/install.sh
ENV PATH $PATH:/usr/local/gcloud/google-cloud-sdk/bin