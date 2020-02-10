#!/bin/bash

cd /home/set/git/Cuttlefish-master/_scripts/

npm run instalib -- liberate https://www.instagram.com/cuttlefish_se -o instagram.yml
rm -f media/*.jpg
rm -f /home/set/git/Cuttlefish-master/images/insta/*

npm run instalib mirror instagram.yml 
mogrify -resize 300 /home/set/git/Cuttlefish-master/_scripts/media/*.jpg

mv /home/set/git/Cuttlefish-master/_scripts/media/*.jpg /home/set/git/Cuttlefish-master/images/insta/
mv /home/set/git/Cuttlefish-master/_scripts/instagram.yml /home/set/git/Cuttlefish-master/_data/

chmod -x _scripts/instalib.sh
