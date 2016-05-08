#!/bin/bash

echo "running dd if=/dev/zero of=/deleteme to fill up free space for compacting optimization"
echo "THIS MIGHT TAKE AWHILE TO COMPLETE"
cd /
dd if=/dev/zero of=/deleteme bs=1M
rm -f /deleteme
