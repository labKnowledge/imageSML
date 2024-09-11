import os
from huggingface_hub import snapshot_download

# Create the model directory if it doesn't exist
os.makedirs("models", exist_ok=True)

# Download the model to the model/ directory
model_path = snapshot_download(repo_id="vaikl/SML", local_dir="models")

print(f"Model downloaded to: {model_path}")