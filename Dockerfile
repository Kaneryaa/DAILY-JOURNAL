# Use an official Node.js runtime as the base image
FROM node:14-alpine

# Create app directory
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose the port the app will listen on
EXPOSE 3000

# Start the app
CMD ["node", "app.js"]
