#!/bin/sh
# HOW TO USE ./add GPGEmailID sigFileName
# Created by Daniel Pilgrim github.com/danpilgrim

GPGEmailID="$1"
fileName="$2"
echo "TERMINAL: Overwrite all files with Y"

gpg --output $fileName.gpg --decrypt $fileName
gpg --output $fileName --decrypt $fileName.gpg

# allows for an addition to the story
echo "TERMINAL: printing story below"
cat $fileName
printf "\nTERMINAL: Is this file decrypted? Type Y/N\n"
read yesno
if ( [ "$yesno" == 'N' ] );
then
echo "TERMINAL: trying another decryption method"
cat $fileName.gpg
printf "\nTERMINAL: Does this work? Type Y/N\n"
read yesno2
if ( [ "$yesno2" == 'N' ] );
then
echo "TERMINAL: Cannot decrypt. Exiting"
exit 1
fi
echo "TERMINAL: Enter a line to add"
read storyAddition
echo $storyAddition >> $fileName
else
echo "TERMINAL: Enter a line to add"
read storyAddition
echo $storyAddition >> $fileName
fi

gpg --output "$fileName.gpg" --encrypt --recipient $GPGEmailID $fileName
gpg --output "$fileName" --sign "$fileName.gpg"

echo "TERMINAL: created encrypted message file"
echo "TERMINAL: $fileName"

