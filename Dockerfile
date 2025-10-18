# ✅ Start from the official n8n image
FROM n8nio/n8n:latest

# Use data directory for workflow persistence
WORKDIR /data

# ✅ Copy your workflow file into the container
COPY ./House-price.json /data/workflows/House-price.json

# ✅ Environment variables for import and activation
ENV N8N_IMPORT_EXPORT_DIR=/data/workflows
ENV N8N_IMPORT_EXPORT_MODE=import
ENV N8N_IMPORT_EXPORT_OVERWRITE=true
ENV N8N_AUTO_ACTIVATE_WORKFLOW=true
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false
ENV N8N_IMPORT_SKIP_DEACTIVATION=true

# ✅ Run import and activate before starting n8n
ENTRYPOINT ["/bin/sh", "-c", "n8n import:workflow --input=/data/workflows/House-price.json && n8n workflow:activate --all && n8n start"]
