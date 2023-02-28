#!/bin/sh

podman build -t lontronix/resume .
podman run -i -t -p 8080:8080 lontronix/resume
