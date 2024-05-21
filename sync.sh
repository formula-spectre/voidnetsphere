#!/usr/bin/env sh

rsync -avz --progress vector-sigma:/srv/voidnetsphere/* .

git add *
git commit -m 'automatic sync commit'
git push
