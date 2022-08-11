#!/bin/bah

SHORT_SHA=$(git rev-parse --short HEAD)
git tag -a UAT-$SHORT_SHA -m "Promoting commit $SHORT_SHA to UAT on $(date)" $SHORT_SHA
git push origin UAT-$SHORT_SHA
echo "Pushed $SHORT_SHA to UAT"