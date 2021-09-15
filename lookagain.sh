#! /bin/bash
find . -name "*.sh" | cut -d "/" -f2 | cut -d "." -f1 | sort -r