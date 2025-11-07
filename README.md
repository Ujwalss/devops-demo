🧩 Phase 1: Local Environment Setup (Your Ubuntu on Windows)

You’ve done this ✅

Tools installed:

Tool	Purpose	Verified
Docker	To build, run, and manage containers	✅ Docker version 28.2.2
Git	For version control (to sync code with GitHub)	✅ git version 2.43.0
Jenkins	For CI/CD automation (build, test, deploy pipeline)	✅ Running on port 8080
🐳 Phase 2: Docker Project — Your devops-demo App

You created and built a simple Python web app using Docker.

Files:

app.py → The Python app (your actual code)

Dockerfile → Instructions to build a Docker image

Example Dockerfile:

FROM python:3.9-slim
WORKDIR /app
COPY . .
RUN pip install flask
CMD ["python", "app.py"]


You built it with:

docker build -t devops-demo:latest .


Then ran it with:

docker run -d -p 5000:8080 devops-demo


So:

The container runs your Python app

It maps host port 5000 → container port 8080

You can access the app via: http://localhost:5000

✅ You successfully ran and tested your container.

⚙️ Phase 3: Jenkins CI/CD Integration

You:

Installed Jenkins (service on port 8080)

Connected it to your GitHub repo

Built the app via Jenkins shell commands

Fixed port conflicts between Jenkins (8080) and app (5000)

Got your first automated deployment working 👏

🔗 Phase 4: GitHub Integration

Your repo: https://github.com/Ujwalss/devops-demo

You configured:

GitHub credentials/token inside Jenkins

Pipeline to pull code from your repo

Now every time you push new code, Jenkins can rebuild and redeploy your app automatically.

🚀 Phase 5: Jenkinsfile Pipeline (Next Level)

We’re introducing a Jenkinsfile, which defines your entire CI/CD pipeline as code.

Instead of manually configuring Jenkins, the file automates:

Pulling code

Building Docker image

Deploying container

Handling cleanup and failure gracefully

This makes your project production-ready DevOps style.

Now before we move on, let’s confirm:

You still have your working ~/devops-demo/ project locally ✅

It’s connected to your GitHub repo ✅

Jenkins is up and running ✅
