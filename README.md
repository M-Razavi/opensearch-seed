# opensearch-seed
Creates the opensearch index and inserts multiple documents at once by using the bulk API, plus leveraging the wait- for-it pattern to run the commands only after the opensearch cluster is green - useful for local development and E2E CI testing scenarios.

## Docker image

The docker image can be found at https://hub.docker.com/repository/docker/mrazavi1/opensearch-seed/

You can use it as follows:
```yaml
  opensearch-seed:
    container_name: opensearch-seed
    image: mrazavi1/opensearch-seed
    environment:
      - OPENSEARCH_URL=http://opensearch:9200
      - INDEX_NAME=my-index
    volumes:
      - ./my-custom-index-settings.json:/seed/index-settings.json
      - ./my-custom-index-bulk-payload.json:/seed/index-bulk-payload.json
```
> More details at the [example](./example) directory.
