FROM node:16.19-alpine3.17
WORKDIR /app
COPY . .
RUN npm install
ENV API_URL="https://api.myapp.com"
EXPOSE 3000