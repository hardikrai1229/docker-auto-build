# FastAPI Docker Deployment

## 1. Run Locally

To run the FastAPI app locally, follow these steps:
pip install -r requirements.txt
uvicorn main:app --reload

## 2. Build and Run Docker Container Locally
To containerize and run the application using Docker:
docker build -t fastapi-app .
docker run -p 8000:8000 fastapi-app

## 3. Deploy with GitHub Actions
This repository is set up with GitHub Actions to automatically build and push the image to Docker Hub on every push to the `main` branch.

### Setup Secrets in GitHub
1. Go to **Settings** → **Secrets and Variables** → **Actions**.
2. Add the following secrets:
   - `DOCKER_USERNAME` (Your Docker Hub username)
   - `DOCKERTOKEN` (Docker Hub access token)

### Trigger Deployment
Push changes to GitHub, and the workflow will trigger automatically. Check the **Actions** tab for workflow execution status.

## 4. Run from Docker Hub
Once the image is successfully pushed, you can pull and run it anywhere:
docker pull hardikrai1229/fastapi-app:latest
docker run -p 8000:8000 hardikrai1229/fastapi-app

## 5. Repository Structure
📂 fastapi-app
├── main.py                # FastAPI application
├── requirements.txt       # Python dependencies
├── Dockerfile             # Docker build instructions
├── .github/workflows
│   ├── DockerBuild.yml    # GitHub Actions workflow
├── README.md              # Documentation

