# Use official n8n image
FROM n8nio/n8n:latest

# Expose default n8n port (for local clarity, Render will provide PORT env)
EXPOSE 5678

# Allow Render's PORT environment variable to control n8n port.
# Use shell form so ${PORT} expands at runtime.
ENV PORT=5678
CMD ["sh", "-c", "n8n start --port ${PORT}"]
