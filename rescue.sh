#!/usr/bin/env bash
mount -o subvol=@,ssd,noatime,compress=zstd:3,space_cache,commit=120 /dev/nvme0n1p3 /mnt
