#!/usr/bin/env bash

# Generate new random key

# dd if=/dev/random of=/root/secret.bin bs=64 count=1

# Add new key to LUKS container

# cryptsetup luksAddKey /dev/nvme0n1p2 /root/secret.bin

# Add key to TPM

tpm2_createpolicy --policy-pcr -l sha256:0,1,2,3,7 -L policy.digest
tpm2_createprimary -C e -g sha256 -G rsa -c primary.context
tpm2_create -g sha256 -u obj.pub -r obj.priv -C primary.context -L policy.digest -a "noda|adminwithpolicy|fixedparent|fixedtpm" -i /root/secret.bin
tpm2_load -C primary.context -u obj.pub -r obj.priv -c load.context
tpm2_evictcontrol -C o -c load.context 0x81000000
rm load.context obj.priv obj.pub policy.digest primary.context secret.bin

# Check persisten object in TPM

# tpm2_getcap handles-persistent
# tpm2_readpublic -c 0x81000000

# Unseal

# tpm2_unseal -c 0x81000000 -p pcr:sha1:0,7 -o /crypto_keyfile.bin

# Remove from TPM

# tpm2_evictcontrol -C o -c 0x81000000


# Remove key from LUKS container

# cryptsetup luksKillSlot /dev/nvme0n1p2 1
