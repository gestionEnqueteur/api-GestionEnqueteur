FROM node:lts-alpine

LABEL version="1.0"
LABEL description="Api de l'application GestionEnqueteur"

WORKDIR /app

COPY . .

RUN npm install 

ENV MONGO_HOST="mongo"
ENV MONGO_PORT="27017"
ENV MONGO_USER="root"
ENV MONGO_PASSWORD="example"
ENV MONGO_URL="mongodb://root:example@mongo:27017/"

EXPOSE 3000

CMD ["npm", "run", "dev"]


