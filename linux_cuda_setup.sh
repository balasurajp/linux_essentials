#!/bin/bash

# Define the URL of the CUDA .run file
CUDA_RUN_URL="https://developer.download.nvidia.com/compute/cuda/11.8.0/local_installers/cuda_11.8.0_520.61.05_linux.run"

# Define the temporary directory path
TEMP_DIR="/tmp/cuda_install"

# Check if the .run file exists in the temporary directory
if [ -f "$TEMP_DIR/cuda_11.8.0_520.61.05_linux.run" ]; then
    echo "CUDA .run file already exists in the temporary directory."
else
    echo "Downloading CUDA .run file..."
    mkdir -p "$TEMP_DIR"
    wget "$CUDA_RUN_URL" --no-check-certificate -O "$TEMP_DIR/cuda_11.8.0_520.61.05_linux.run"
fi

# Run the CUDA installer
sudo sh "$TEMP_DIR/cuda_11.8.0_520.61.05_linux.run" --no-drm --no-man-page --override --toolkitpath=/usr/local/cuda-11.8/ --toolkit

# Add environment variables to .bashrc
echo "export LD_LIBRARY_PATH=\$LD_LIBRARY_PATH:/usr/local/cuda-11.8/lib64" >> ~/.bashrc
echo "export PATH=\$PATH:/usr/local/cuda-11.8/bin" >> ~/.bashrc

# Source the updated .bashrc
source ~/.bashrc

# Remove the downloaded .run file
rm -rf "$TEMP_DIR"

# Set permissions for CUDA directory
sudo chmod -R a+rx /usr/local/cuda-11.8

