#!/bin/bash

cd /home/set/git/cuttlefish/_scripts/insta/

npm run instalib -- liberate https://www.instagram.com/cuttlefish_se -o instagram.yml
rm -f media/*.jpg
rm -f /home/set/git/cuttlefish/images/insta/*

npm run instalib mirror instagram.yml 
mogrify -resize 220 /home/set/git/cuttlefish/_scripts/media/*.jpg

mv /home/set/git/cuttlefish/_scripts/media/*.jpg /home/set/git/cuttlefish/images/insta/
mv /home/set/git/cuttlefish/_scripts/instagram.yml /home/set/git/cuttlefish/_data/

chmod -x _scripts/instalib.sh
