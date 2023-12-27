# Use a minimal Node.js image as the base
FROM node:18-slim

WORKDIR /app

# Copy package.json and package-lock.json first for efficient caching
COPY package*.json ./

RUN npm install

# Copy the rest of the app
COPY . .

EXPOSE 4000

CMD ["node", "index.js"]
