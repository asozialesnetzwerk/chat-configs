#!/bin/sh

# Download images
curl https://raw.githubusercontent.com/asozialesnetzwerk/chat-configs/main/kangaroo.svg > webapp/welcome/images/logo.svg
curl https://raw.githubusercontent.com/asozialesnetzwerk/chat-configs/main/bio_brause.svg > webapp/welcome/images/matrix.svg
curl https://raw.githubusercontent.com/asozialesnetzwerk/chat-configs/main/kangaroo_bg.png > webapp/themes/element/img/backgrounds/lake.jpg
curl https://raw.githubusercontent.com/asozialesnetzwerk/chat-configs/main/WebsiteIcon.svg > webapp/themes/element/img/logos/element-logo.svg

#replace icon
sed -i 's|<link rel="shortcut icon" href="[^\n]*">|<link rel="shortcut icon" href="themes/element/img/logos/element-logo.svg">|g' webapp/index.html
