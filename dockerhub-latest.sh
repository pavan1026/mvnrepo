#!/bin/bash

tag=$(curl -s "https://registry.hub.docker.com/v2/repositories/8179554905/env-app/tags" | jq --raw-output '.results[].name' | head -1)
 echo $tag

latest="$(docker pull 8179554905/env-app:$tag)"
echo $latest
