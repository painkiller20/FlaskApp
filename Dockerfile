# Use official Python slim image
FROM python:3.11-slim

# Set working directory in the container
WORKDIR /app

# Copy requirements first to leverage Docker cache
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy all project files into the container
COPY . .

# Expose port 5000
EXPOSE 5000

# Run the Flask app
CMD ["python", "app.py"]
