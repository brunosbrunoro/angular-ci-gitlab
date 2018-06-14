FROM node:8-alpine
LABEL authors="Bruno Scrok Brunoro"
LABEL email="bruno.sbrunoro@gmail.com"

RUN apk add --update git
RUN npm install -g @angular/cli
