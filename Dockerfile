# Use Ubuntu as base image
FROM ubuntu:latest

# Install required dependencies
RUN apt update && apt install -y python3 python3-pip python3-venv

# Set working directory
WORKDIR /app

# Copy application files
COPY . .

# Create a virtual environment and install dependencies
RUN python3 -m venv venv && \
    . venv/bin/activate && \
    pip install --no-cache-dir -r requirements.txt

# Expose port 8000
EXPOSE 8000

# Run FastAPI server using virtual environment
CMD ["/app/venv/bin/uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
