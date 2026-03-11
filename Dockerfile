# Use official Node runtime
FROM public.ecr.aws/docker/library/node:20-alpine3.19
# Create app directory
WORKDIR /app

# Copy package files first (better Docker caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy application code
COPY . .

# Expose application port
EXPOSE 3000

# Start the application
CMD ["npm", "start"]