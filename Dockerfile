FROM node:lts-slim

WORKDIR  /app
COPY src/server.js /app
EXPOSE 8080
CMD ["node", "server.js"]
