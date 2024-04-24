FROM opensearchproject/opensearch:1.3.13
WORKDIR seed

ARG OPENSEARCH_URL
ENV OPENSEARCH_URL=$OPENSEARCH_URL
ARG INDEX_NAME
ENV INDEX_NAME=$INDEX_NAME
ARG USER=admin
ENV USER=$USER
ARG PASSWORD=admin
ENV PASSWORD=$PASSWORD

COPY opensearch-seed-script.sh .
COPY index-settings.json .
COPY index-bulk-payload.json .

ENTRYPOINT ["sh", "opensearch-seed-script.sh"]
