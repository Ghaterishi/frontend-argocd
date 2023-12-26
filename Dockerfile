# Use an official Node.js runtime as a base image
FROM node:14

# Set the working directory inside the container
WORKDIR '/app'

# Copy package.json and package-lock.json to the working directory
COPY package*.json './'

# Install application dependencies
RUN npm install

# Copy the application code to the container
COPY . .

# Expose the port on which your application will run
EXPOSE 3000

# Define the command to run your application
CMD ["npm", "start"]
