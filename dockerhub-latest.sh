#!/bin/bash

tag=$(curl -s "https://registry.hub.docker.com/v2/repositories/8179554905/development/tags" | jq --raw-output '.results[].name' | head -1)
 echo $tag

latest="$(docker run 8179554905/env-app:$tag)"
echo $latest
