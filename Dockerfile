FROM node:15.12.0-buster-slim

RUN apt-get update \
  && export DEBIAN_FRONTEND=noninteractive \
  && apt-get install -y git

ARG CANVAS_UI_VERSION="master"

WORKDIR /opt/canvas-ui

RUN git clone https://github.com/paritytech/canvas-ui.git . \
  && git checkout ${CANVAS_UI_VERSION} \
  && yarn install

CMD ["yarn", "start"]

LABEL \
  org.label-schema.name="Canvas UI" \
  org.label-schema.description="Basic Polkadot/Substrate UI for interacting with a node." \
  org.label-schema.vcs-url="https://github.com/elkozmon/canvas-ui-docker" \
  org.label-schema.docker.cmd="docker run -d --net host --name canvas-ui --restart unless-stopped elkozmon/canvas-ui:latest"