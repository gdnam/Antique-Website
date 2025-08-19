FROM node:18-alpine

WORKDIR /app

# Copy package.json và cài dependencies
COPY package*.json ./
RUN npm install --production

# Copy toàn bộ source code
COPY . .

# Expose cổng
EXPOSE 3000

# Start web server
CMD ["npm", "start"]
