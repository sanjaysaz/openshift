# Use an official Node.js runtime as a parent image
FROM node:20

# Set the working directory in the container
WORKDIR /Users/sanjaysaz/openshift

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY . .

# Expose the port the app runs on
EXPOSE 8080

# Run the app when the container starts
CMD ["node", "index.js"]

