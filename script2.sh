  GNU nano 7.2                                           script2.sh
#!/bin/bash

PACKAGE="python3"


if dpkg -l | grep -q "^ii  $PACKAGE"; then
    echo "================================"
    echo "$PACKAGE is installed"
else
    echo "================================"
    echo "$PACKAGE is NOT installed "
fi

echo "--------------------------------"

case $PACKAGE in
    python3)
        echo "Python: powerful open-source programming language"
        ;;
    git)
        echo "Git: version control system"
        ;;
    vlc)
        echo "VLC: media player"
        ;;
    *)