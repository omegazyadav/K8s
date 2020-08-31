FROM node:12-alpine3.10 AS builder

ENV YARN_VERSION 1.22.4
WORKDIR /home
COPY app.js package.json ./
RUN npm install

FROM builder
WORKDIR /opt
USER node
COPY --chown=node:node --from=builder /home . 
EXPOSE 8080
CMD ["npm", "start"]

