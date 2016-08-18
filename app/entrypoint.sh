#!/bin/sh

echo "Launching ncat echo daemon on TCP port 7"
(>&1 echo "Test: This line is echoed to stdout")
(>&2 echo "Test: This line is echoed to stderr")
ncat -v -l 2000 -k -c 'xargs -n1 echo'
