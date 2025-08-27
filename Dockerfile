# Start from the official Python slim image
FROM python:3.9-slim

# Set working directory inside container
WORKDIR /app

# Copy app files into container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose FastAPI app port
EXPOSE 8000

# Start the FastAPI app with Uvicorn
CMD ["uvicorn", "main_api:app", "--host", "0.0.0.0", "--port", "8000"]
