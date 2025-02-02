# impact

## DNS configuration

[Map](https://cloud.google.com/run/docs/mapping-custom-domains#gcloud) a custom domain to cloud run.
Or, a [load balancer](https://cloud.google.com/blog/topics/developers-practitioners/serverless-load-balancing-terraform-hard-way).

## Deploy

```bash
gcloud auth login
gcloud auth configure-docker

./deploy barncat
```