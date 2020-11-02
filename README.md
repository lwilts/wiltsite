# wiltsite
A repo for deploying a pointless static site - but with *automation*!
See the result at https://lukewiltshire.co.uk

## Local testing
`docker build -t wiltsite . && docker run -d --name wiltsite -p 8080:8080 -e PORT=8080 wiltsite`

## Deployment
1. Get GCP
2. Enable Cloud Run API
3. Create a Cloud Build trigger pointing to this repo, using cloudbuild.yaml
4. Run pipeline manually, or push a commit to trigger it
5. Watch the magic happen

## Post-deployment
I added my domain to the Cloud Run service, as documented [here](https://cloud.google.com/run/docs/mapping-custom-domains).

