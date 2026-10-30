FROM node:22.21.1-slim

WORKDIR /app

# අවශ්‍ය dependencies සමඟ git ද ඉන්ස්ටෝල් කරගැනීම
RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y build-essential node-gyp pkg-config python-is-python3 git

COPY package.json ./
RUN npm install

COPY . .

EXPOSE 3000
CMD ["npm", "start"]
