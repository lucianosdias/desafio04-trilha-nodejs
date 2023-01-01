FROM node:18-alpine
WORKDIR /usr/app
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
RUN npm install --silent && mv node_modules ../
COPY . .
EXPOSE 3333
RUN chown -R node /usr/app
USER node
CMD ["npm", "run", "dev"]
