# Use official n8n image
FROM n8nio/n8n:latest

# Set working directory
WORKDIR /home/node

# Expose n8n default port
EXPOSE 5678

# Environment variable (Render will override PORT automatically)
ENV PORT=5678

# Use the image’s default entrypoint to start n8n
ENTRYPOINT ["n8n"]
