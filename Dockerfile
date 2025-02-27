# Use Node.js 20 base image
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app's files
COPY . .

# Expose the Next.js default port
EXPOSE 3000

# Start the Next.js app
CMD ["npm", "run", "dev"]
