FROM node:lts-alpine
WORKDIR /app
COPY package*.json ./
RUN npm i
RUN npm install -g nodemon
COPY . .
EXPOSE 3000
CMD ["npm", "dev"]

# docker build -t ...