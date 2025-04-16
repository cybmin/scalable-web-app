# Use official Node.js image
FROM node:16

# Set the working directory in the container
WORKDIR /app

# Copy package.json and install dependencies (if there were any)
COPY package*.json ./
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port the app will run on
EXPOSE 8080

# Command to run the app
CMD ["node", "index.js"]

