FROM node:12
npm install serve-favicon
WORKDIR /app
ADD . /app
RUN npm install
EXPOSE 3000
CMD npm start
