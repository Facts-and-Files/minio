# Minio S3 compatible object storage

Minio Stack for Local S3 compatible storage testing.
Used for local Archive API and and Cantaloupe.

## Development

Rename .env.testing to .env, make your changes and start the container:

	$ docker compose up -d

The API is now available at http://localhost:9000 and the WebUI at http://localhost:9001.

Login in the WebUI and create the bucket called »iiif«.
