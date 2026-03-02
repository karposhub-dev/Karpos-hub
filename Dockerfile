# Use the official Node.js image as the base image for the first stage
FROM node:16 AS build

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the application (if applicable)
RUN npm run build

# Use the official Node.js image for the final stage
FROM node:16 AS production

# Set the working directory
WORKDIR /app

# Copy only the built assets and necessary files from the build stage
COPY --from=build /app .

# Expose the port the app runs on
EXPOSE 3000

# Command to run the app
CMD ["npm", "start"]
