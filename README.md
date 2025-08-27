
# FastAPI Docker App

This project is a simple FastAPI application deployed inside a Docker container. It demonstrates how to set up and run a FastAPI server with Docker from scratch.

## 📁 Project Structure

```
fastapi_docker_app/
├── main.py               # FastAPI application
├── requirements.txt      # Download required libraries
├── Dockerfile            # Dockerfile to build the image
└── README.md             # Project documentation
```

## 🚀 Features

- FastAPI REST endpoint (`/`)
- Dockerized container
- Lightweight and easy to understand

## 🛠️ Requirements

- [Docker Desktop](https://www.docker.com/products/docker-desktop) installed and running

> ⚠️ Make sure WSL or Hyper-V is enabled if using Docker Desktop on Windows.

## 🐳 Docker Setup

### 1. Clone the repository

```bash
git clone https://github.com/your-username/fastapi-docker-app.git
cd fastapi-docker-app
```

### 2. Build the Docker image

```bash
docker build -t fastapi-docker-demo .
```

### 3. Run the Docker container

```bash
docker run -d -p 8000:8000 fastapi-docker-demo
```

### 4. Open in Browser

Visit [http://localhost:8000](http://localhost:8000)

FastAPI Swagger docs will be available at:  
[http://localhost:8000/docs](http://localhost:8000/docs)

## 📦 Files Explained

### `app/main.py`

```python
from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Hello from Dockerized FastAPI"}
```

### `Dockerfile`

```Dockerfile
# Use an official Python image
FROM python:3.11

# Set the working directory
WORKDIR /app

# Copy code
COPY ./app /app

# Install dependencies
RUN pip install fastapi uvicorn

# Command to run the app
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
```

### `.dockerignore`

```
__pycache__/
*.pyc
*.pyo
*.pyd
.Python
.env
```

---

Happy developing! 🚀
