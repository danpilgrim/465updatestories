#!/bin/sh
#./encrySign AsuID filename
recipient="$1"
fileName="$2"
gpg --output "$fileName.gpg" --encrypt --recipient $recipient@asu.edu $fileName
gpg --output "dpilgrim_to_$recipient.sig" --sign "$fileName.gpg"
echo "dpilgrim_to_$recipient.sig"