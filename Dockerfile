# Use a lightweight Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy backend and templates/static folders
COPY backend/ backend/
COPY templates/ templates/
COPY static/ static/

# Install Flask (minimal dependencies for now)
RUN pip install --no-cache-dir flask

# Expose port for host access
EXPOSE 5000

# Default command to run Flask
CMD ["python3", "backend/app.py"]
