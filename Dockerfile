FROM node:18-alpine
WORKDIR /app
RUN apk add --no-cache curl
COPY app/package*.json ./
RUN npm install
COPY app .
EXPOSE 3000
CMD ["npm", "start"]

