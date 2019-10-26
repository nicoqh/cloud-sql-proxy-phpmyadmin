#/bin/bash

# optionally add the -d flag
docker run \
  -v `pwd`/<PATH_TO_KEYFILE>:/config \
  -p 127.0.0.1:3306:3306 \
  gcr.io/cloudsql-docker/gce-proxy:1.14 /cloud_sql_proxy \
  -instances=<INSTANCE_CONNECTION_NAME>=tcp:0.0.0.0:3306 -credential_file=/config
