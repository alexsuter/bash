#!/bin/bash

title="Nice title"
description="stackoverflow example"

curl -X POST \
     -H "Content-Type: application/json" \
     -u ivy-als:ihzsh66KTV https://bitbucket.org/api/2.0/repositories/axonivy-prod/ivy-core/pullrequests \
     -d '{ "title": "${title}", "description": "${description}", "source": { "branch": { "name": "stale/scaling" }, "repository": { "full_name": "axonivy-prod/ivy-core" } }, "destination": { "branch": { "name": "master" } }, "reviewers": [ { "username": "ivy-lli" } ], "close_source_branch": true }'
