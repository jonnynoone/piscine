#! /bin/bash

OUTPUT=$(curl -s https://api.github.com/users/jonnynoone)

NAME="Jonny"
AGE=31
echo "Hello, $NAME! You are $AGE years old."
echo $OUTPUT