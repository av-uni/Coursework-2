FROM node:alpine

# Set working directory
WORKDIR /app

# Copy application file
COPY server.js .

# Expose application port
EXPOSE 8080

# Run the application
CMD ["node", "server.js"]
