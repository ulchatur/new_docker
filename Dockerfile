FROM node:12
RUN npm install serve-favicon
WORKDIR /app
ADD . /app
RUN npm install
EXPOSE 3000
CMD npm start
