# About

Creates a docker container which has alpine linux and nginx

## Installation

```bash
docker pull jamason/nginx-alpine
```

## Examples

Run with volumes

```bash
docker run -v /home/html:/usr/share/nginx/html -p 8080:10080 -d jamason/nginx-alpine
```
