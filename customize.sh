#!/bin/bash

# Download images
curl https://raw.githubusercontent.com/asozialesnetzwerk/chat-configs/main/kangaroo.svg > webapp/welcome/images/logo.svg
curl https://raw.githubusercontent.com/asozialesnetzwerk/chat-configs/main/bio_brause.svg > webapp/welcome/images/matrix.svg
curl https://raw.githubusercontent.com/asozialesnetzwerk/chat-configs/main/WebsiteIcon.svg > webapp/WebsiteIcon.svg
curl https://raw.githubusercontent.com/asozialesnetzwerk/chat-configs/main/kangaroo_bg.png > webapp/themes/element/img/backgrounds/lake.jpg
#replace Element with Asozialer Chat
sed -i 's/Element/Asozialer Chat/g' webapp/index.html

#replace icon
sed -i 's/<link rel="shortcut icon" href="[^\n]*">/<link rel="shortcut icon" href="WebsiteIcon.svg">/g' webapp/index.html

#improve colors:
find webapp/ -type f -exec \
    sed -i 's/#0DBD8B/#C91616/g' {} +
find webapp/ -type f -exec \
    sed -i 's/#0dbd8b/#C91616/g' {} +
find webapp/ -type f -exec \
    sed -i 's/#368BD6/#000000/g' {} +
