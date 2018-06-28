FROM node:10-alpine
LABEL authors="Bruno Scrok Brunoro"
LABEL email="bruno.sbrunoro@gmail.com"

RUN apk add --update git
RUN npm install -g @angular/cli@6.0.0
RUN npm install -g firebase-tools