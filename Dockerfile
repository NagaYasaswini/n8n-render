# Use the official n8n Docker image
FROM n8nio/n8n:latest

# Set the working directory
WORKDIR /home/node

# Expose the n8n default port (Render assigns automatically)
EXPOSE 5678

# Environment variable for port (optional)
ENV PORT=5678

# Start n8n using full binary path
CMD ["/usr/local/bin/n8n", "start"]
