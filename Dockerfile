# Use an official node image as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /pandya_jainishkumar_coding_assignment11

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port the app runs on
EXPOSE 7775

# Set the environment variable to run the development server on the desired port
ENV PORT 7775

# Start the development server
CMD ["npm", "start"]
