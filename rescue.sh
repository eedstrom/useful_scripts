#!/usr/bin/env bash

# Script for mounting rescue CD.  Pretty nifty

mount -o subvol=@,ssd,noatime,compress=zstd:3,space_cache,commit=120 /dev/nvme0n1p3 /mnt
