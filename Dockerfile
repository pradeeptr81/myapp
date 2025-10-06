# Base image
FROM node:18

# Set working directory
WORKDIR /usr/src/app

# Copy package.json & install dependencies
COPY package*.json ./
RUN npm install

# Copy app source
COPY . .

# Expose port and start app
EXPOSE 3000
CMD ["npm", "start"]

