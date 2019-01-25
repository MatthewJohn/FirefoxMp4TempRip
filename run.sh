#!/bin/bash

while true; do find . -type f -mmin -60 -size +1097152c -exec bash -c 'if file {} | grep -i mp4; then rsync -havxt --checksum {} ~/Videos/{}.mp4; fi' \;; sleep 5; done
