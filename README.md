Connect to Cloud SQL using the proxy Docker image.

Optionally, use `docker-compose` to run phpMyAdmin alongside the proxy container.

# Configuration

Download the service account key as a JSON file. Make sure the reference to this
file is correct in `run_local_proxy.sh` and `docker-compose.yml`.

Retrieve your instance *connection* name:

```
gcloud sql instances describe YOUR_INSTANCE_NAME
```

# run_local_proxy.sh

Starts the Cloud SQL Proxy Docker container. Connect using the MySQL client:

```
mysql -u <USERNAME> -p --host 127.0.0.1
```

# docker-compose.yml

Starts the Proxy Docker container and phpMyAdmin on port 8090.

```
docker-compose up
```
