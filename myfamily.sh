#! /bin/bash

HERO_ID=91

curl -s https://learn.01founders.co/assets/superhero/all.json | jq ".[$HERO_ID].connections.relatives"