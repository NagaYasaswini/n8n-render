# ---------------------------------------
# Use the official n8n image
# ---------------------------------------
FROM n8nio/n8n:latest

# ---------------------------------------
# Set working directory
# ---------------------------------------
WORKDIR /data

# ---------------------------------------
# Copy your exported workflow into the container
# Make sure the JSON file exists in your repo root
# and is NOT ignored in .dockerignore
# ---------------------------------------
COPY ./House-price.json /data/workflows/House-price.json

# ---------------------------------------
# Environment variables for auto-import
# ---------------------------------------
ENV N8N_IMPORT_EXPORT_DIR=/data/workflows
ENV N8N_IMPORT_EXPORT_MODE=import
ENV N8N_IMPORT_EXPORT_OVERWRITE=true

# Optional — helps n8n auto-activate workflows on start
ENV N8N_AUTO_ACTIVATE_WORKFLOW=true

# ---------------------------------------
# Expose default n8n port (Render overrides automatically)
# ---------------------------------------
EXPOSE 5678

# ---------------------------------------
# Default command to start n8n
# ---------------------------------------
CMD ["/usr/local/bin/n8n", "start"]