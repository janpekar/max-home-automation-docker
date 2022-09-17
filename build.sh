#!/bin/bash
#nocache="--no-cache"
params=$nocache
docker build . $params -t max-home-automation:latest
