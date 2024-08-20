FROM kalilinux/kali-rolling

# Set noninteractive mode to avoid interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Update and install the package with error handling
RUN apt-get update && apt-get install -y kali-linux-core || \
    { echo "Failed to install kali-linux-core"; exit 1; }

# Clean up to reduce image size
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
