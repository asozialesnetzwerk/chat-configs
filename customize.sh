#!/bin/bash

# Download images
curl https://raw.githubusercontent.com/asozialesnetzwerk/chat-configs/master/kangaroo.svg > webapp/welcome/images/logo.svg
curl https://raw.githubusercontent.com/asozialesnetzwerk/chat-configs/master/bio_brause.svg > webapp/welcome/images/matrix.svg
curl https://raw.githubusercontent.com/asozialesnetzwerk/chat-configs/master/kangaroo_bg.png > webapp/themes/element/img/backgrounds/lake.jpg
curl https://raw.githubusercontent.com/asozialesnetzwerk/chat-configs/master/WebsiteIcon.svg > webapp/themes/element/img/logos/element-logo.svg
#replace Element with Asozialer Chat
find webapp/ -type f \( -name "*.html" -or -name "*.json" \) -exec \
    sed -i 's/Element/Asozialer Chat/g' {} +

#replace icon
sed -i 's|<link rel="shortcut icon" href="[^\n]*">|<link rel="shortcut icon" href="themes/element/img/logos/element-logo.svg">|g' webapp/index.html

#improve colors:
find webapp/ -type f \( -name "*.html" -or -name "*.svg" -or -name "*.css" \) -exec \
    sed -i 's/#0DBD8B/#C91616/g' {} +
find webapp/ -type f \( -name "*.html" -or -name "*.svg" -or -name "*.css" \) -exec \
    sed -i 's/#0dbd8b/#C91616/g' {} +
find webapp/ -type f \( -name "*.html" -or -name "*.svg" -or -name "*.css" \) -exec \
    sed -i 's/#368BD6/#000000/g' {} +
