project_id=$1

docker build -t gcr.io/$project_id/impact .
docker push gcr.io/$project_id/impact
gcloud run deploy impact --image gcr.io/$project_id/impact --region us-central1 --platform managed