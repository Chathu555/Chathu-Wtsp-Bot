FROM node:18-alpine

# Git ඉන්ස්ටෝල් කරගැනීම සඳහා
RUN apk add --no-cache git

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
