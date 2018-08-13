#!/bin/bash
if [ -z $1 ]; then
    VERS="latest"
fi

docker build -t jsbarber/ftps3:$VERS
if [ $? -ne 0 ]; then
    echo "Build failed. See output above. Aborting..."
    exit 1
fi

docker push jsbarber/ftps3:$VERS
if [ $? -ne 0 ]; then
    echo "Push failed. See output above. Aborting..."
    exit 1
fi

exit 0
