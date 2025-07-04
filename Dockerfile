FROM node
LABEL app=my-node-app
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm i
COPY . .
EXPOSE 3000
CMD node ./bin/www
