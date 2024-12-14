# Use Ubuntu Bionic (18.04) as the base image
FROM ubuntu:bionic

# Set environment variables to avoid interactive prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

# Open port 8000 in the container
EXPOSE 8000

# Update package list and install python3-venv and zip when the container starts
CMD ["sh", "-c", "apt-get update && apt-get install -y python3-venv zip && tail -f /dev/null"]
