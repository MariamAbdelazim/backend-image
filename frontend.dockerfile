# Use an official Node runtime as a parent image
FROM node:14

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the current directory contents into the container at /app
COPY . .

# Expose port 8080 to the outside world
EXPOSE 8080

# Command to print Node.js version during build
RUN node --version

# Command to run the application
CMD ["npm", "start"]
