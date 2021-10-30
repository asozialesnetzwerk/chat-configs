#!/bin/sh

#replace Element with Asozialer Chat
#find webapp/ -type f \( -name "*.html" -or -name "*.json" \) -exec \
#    sed -i 's/Element/Asozialer Chat/g' {} +

#improve colors:
find webapp/ -type f \( -name "*.html" -or -name "*.svg" -or -name "*.css" \) -exec \
    sed -i 's/#0DBD8B/#C91616/g' {} +
find webapp/ -type f \( -name "*.html" -or -name "*.svg" -or -name "*.css" \) -exec \
    sed -i 's/#0dbd8b/#C91616/g' {} +
find webapp/ -type f \( -name "*.html" -or -name "*.svg" -or -name "*.css" \) -exec \
    sed -i 's/#368BD6/#000000/g' {} +
