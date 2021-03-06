FROM node:8.17.0-alpine

LABEL version="1.2.1"

LABEL com.github.actions.name="GitHub Action for Firebase"
LABEL com.github.actions.description="Wraps the firebase-tools CLI to enable common commands."
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="gray-dark"

RUN apk --update add openjdk8-jre
RUN apk add --no-cache git

RUN npm i -g npm@7.10.0
RUN npm i -g firebase-tools@7.7.0

COPY LICENSE README.md /
COPY "entrypoint.sh" "/entrypoint.sh"

ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]
