# Use the official Node.js 16 as a parent image
FROM node:16-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (or yarn.lock) files
COPY package.json package-lock.json* ./

# Install dependencies
# Using --production flag to avoid installing devDependencies
RUN npm install --production

# Copy the rest of your application code
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Define the command to run your app
CMD ["node", "app.js"]

