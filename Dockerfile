# ✅ Start from the official n8n image
FROM n8nio/n8n:latest

# Use data directory for workflow persistence
WORKDIR /data

# ✅ Copy your workflow file into the container
COPY ./House-price.json /data/workflows/House-price.json

# ✅ Environment variables for import and activation
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false
ENV N8N_METRICS=false
ENV N8N_RUNNERS_ENABLED=true
ENV N8N_BLOCK_ENV_ACCESS_IN_NODE=false
ENV N8N_GIT_NODE_DISABLE_BARE_REPOS=true


# ✅ Run import and activate before starting n8n
ENTRYPOINT ["/bin/sh", "-c", "n8n import:workflow --input=/data/workflows/House-price.json && n8n start"]