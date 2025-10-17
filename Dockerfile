# Use the official n8n image
FROM n8nio/n8n:latest

# Set working directory
WORKDIR /home/node

# Expose default port (Render assigns its own)
EXPOSE 5678

# Default command
CMD ["n8n", "start"]
