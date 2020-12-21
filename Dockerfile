FROM node:12
WORKDIR /app
ADD . /app
RUN npm install
EXPOSE 3000
ENTRYPOINT ["NODE"]
CMD ["node.js"]
