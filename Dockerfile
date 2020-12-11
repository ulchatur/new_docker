FROM node:12
USER jenkins
WORKDIR /app
ADD . /app
RUN npm install
EXPOSE 3000
CMD npm start
