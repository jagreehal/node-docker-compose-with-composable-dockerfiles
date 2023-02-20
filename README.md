# Docker - Compose all the things

This is an example of how to compose Docker Compose files.

Using separate infrastructure and application docker-compose files provides a clean and organized approach to deploying containerized applications, making it easier to manage, maintain, and scale your infrastructure and application code independently.

## For local development

You only need to run infrastructure services (database, cache, etc) and the application itself.

To start infrastructure services run the following command:

```bash
docker-compose -f docker-compose-infra.yml up
```

If you want to run the application in a container for local development, run the following command:

```bash
docker-compose -f docker-compose-app.yml -f docker-compose-infra.yml up
```

## For production

The Dockerfile is for local development, for production you should use a multi-stage build to create a smaller image.
