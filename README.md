# README

Here are some feature ideas to track and manage your personal labs:

Core Features

- Lab List & Details
  - Title, description, tags (e.g., frontend, systems, AI, etc.)
  - Tech stack/tools used
  - Skill level or area (e.g., system design, testing, etc.)
  - Status: planned / in-progress / completed
  - Time estimate & time spent
  - Date started / completed
- Progress Tracking
  - Notes/journaling field per lab
  - GitHub repo link
  - Screenshots or demo link uploads
  - Lessons learned
- Categorization
  - Filter/sort/search by skill area or tech stack
  - Priority ranking
- Bonus Features
  - Markdown support for notes
  - Lab dependencies (e.g., “do X before Y”)
  - Export to markdown or PDF

### Steps to run on Minikube

```
eval $(minikube docker-env)
docker build -t saotharlann .
kubectl apply -f saotharlann-deployment.yaml
kubectl expose deployment saotharlann --type=NodePort --port=3000
kubectl get svc saotharlann
minikube ip
```
