FROM node:14.17.6
ENV NODE_ENV=production
ENV PORT=80

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production

COPY . .

CMD [ "node", "server.js" ]
