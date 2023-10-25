#!/bin/bash

tag="$(curl -s -S "https://registry.hub.docker.com/v2/repositories/8179554905/env-app/tags/" | jq '."results"[]["name"]' | head -n 1)"
echo $tag

latest="$(docker pull 8179554905/env-app:$tag)"

echo $latest
