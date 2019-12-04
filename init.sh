#!/usr/bin/env bash

DAY=`date '+%-d'`
YEAR=`date '+%-Y'`
# Copy this from requests pane of browser dev tools
AUTH_HEADER='cookie: _ga=YOUR_GA; session=YOUR_SESSION_ID; _gid=YOUR_GID'

# Get the input
curl "https://adventofcode.com/2019/day/$DAY/input" -H 'authority: adventofcode.com' -H 'cache-control: max-age=0' -H 'upgrade-insecure-requests: 1' -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36' -H 'sec-fetch-user: ?1' -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3' -H 'sec-fetch-site: same-origin' -H 'sec-fetch-mode: navigate' -H 'accept-encoding: gzip, deflate, br' -H 'accept-language: en-US,en;q=0.9' -H "${AUTH_HEADER}" --compressed  > aoc$DAY.in

# Create and populate janky "template"
mv aoc$DAY.py aoc$DAY-bak-`date '+%H-%M-%S'`.py || true
cat aocX.py | sed "s/\"X\"/\"$DAY\"/" > aoc$DAY.py

# Make a blank file to copypaste examples into
touch aoc$DAY.test.in