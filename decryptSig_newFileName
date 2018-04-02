#!/bin/sh
#./decrypt file.sig newName
fileName="$1"
fileName2="$2"
gpg --output $fileName.gpg --decrypt $fileName
rm $fileName2
gpg --output $fileName2 --decrypt $fileName.gpg