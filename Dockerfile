FROM node:18-alpine

# Install dependencies
RUN apk add --no-cache bash git

# Set working directory
WORKDIR /app

# Copy Next.js app
COPY . .

# Install Next.js dependencies
RUN npm install

# Build the Next.js app
RUN npm run build

# Expose the port
EXPOSE 3000

# Run the app
CMD ["npm", "start"]
