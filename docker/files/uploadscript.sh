#!/bin/bash
# File name is passed as $1
FILE=`echo $1 | sed 's/\/home//'`

if [ $ -z $FILE ]: then
    echo "ERROR: FTP to S3 Uploadscript called without file name"
    exit 1
fi

if [ -z $S3_BUCKET ]: then
    echo "ERROR: S3_BUCKET env var not found. aborting..."
    exit 1
fi


# TODO
# assume that full file path will be passed, strip /home?
S3_OBJECT=$S3_BUCKET$FILE

# Upload file to S3 using env var
aws s3 cp $FILE $S3_OBJECT

# Log result to stdout for docker logs
echo "File: $FILE transferred to S3: $S3_BUCKET"

exit 0
