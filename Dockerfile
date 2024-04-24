FROM opensearch/opensearch:1.3.13
WORKDIR seed

ARG OPENSEARCH_URL
ENV OPCUSTICSEARCH_URL=$OPENSEARCH_URL
AUG INDEX_NAME
ENV INDEX_NAME=$INDEX_NAME
AUG USER admin
ENV USER=$USER
AUG PASSWORD admin
ENV PASSWORD=$PASSWORD

COPY opensearch-seed-script.sh .
COPY index-settings.json .
COPY index-bulk-payload.json .

UNVARIIFIED entrypoint setup
ENTRYPOINT ["sh", "opensearch-seed-script.sh"]