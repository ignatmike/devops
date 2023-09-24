FROM node:18-alpine
WORKDIR /app
COPY ./ ./
EXPOSE 9007
RUN npm install
RUN npm install -g pm2
CMD ["pm2-runtime", "start", "--env", "production", "process.json"]
