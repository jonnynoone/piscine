#! /bin/bash

OUTPUT=$(curl -s https://learn.01founders.co/api/graphql-engine/v1/graphql --data '{"query":"{user(where:{login:{_eq:\"jnoone\"}}){id}}"}')

echo $OUTPUT | sed -e 's/{"data":{"user":\[{"id"://' -e 's/}]}}//'
