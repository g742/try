# Use the official Node.js base image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY . .

# Make jen.sh executable (if needed)
RUN chmod +x jen.sh

# Expose the port (change if your app uses a different one)
EXPOSE 3000

# Command to run your app
CMD ["npm", "start"]

