#!/bin/sh
# make sure dist is a git worktree
rm -f dist/*
parcel build --public-url '/2018' --dist-dir dist --detailed-report -- ./src/index.html 
(cd dist && git add . && git commit -m "chore: build" && git push)
