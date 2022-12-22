FROM node:16.19-alpine3.17
RUN addgroup app && adduser -S -G app app
USER app
WORKDIR /app
COPY --chown=app:app package*.json .
RUN npm install
COPY . .
ENV API_URL="https://api.myapp.com"
EXPOSE 3000
# shell form: CMD npm start

# Exec form
CMD ["npm", "start"]
ENTRYPOINT [ "executable" ]






# If we put the line to add new user at the end of the file, it means:
# We created everything with root user, then we create a limited permissin user called app
# move these line up
# RUN is building command, it execute when building the image
# Use ENTRYPOINT only when we know that command must be execute when ruuning container 