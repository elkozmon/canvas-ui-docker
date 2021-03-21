# Canvas UI in Docker

Dockerfile for Polkadot/Substrate UI for interacting with a node. 

## Quick start

```sh
docker run \
  -d -p 3000:3000 \
  --name canvas-ui \
  --restart unless-stopped \
  elkozmon/canvas-ui:latest
```
