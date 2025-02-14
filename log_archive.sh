#! /usr/bin/env bash

# variables
ORIGIN_DIR="/var/log"
DEST_DIR="$1"
FILE_NAME="backup_files_$(date +%Y%m%d_%H%M%S).tar.gz"

if [ -z "$DEST_DIR" ]; then
    echo "Usage: $0 <mdestination directory>"
    exit 1
fi

# create the repository if it does not exist
mkdir -p "$DEST_DIR"

# access the /var/log
cd $ORIGIN_DIR

# copy and compress the log files to the log-archive directory
tar -czf "$DEST_DIR"/"$FILE_NAME" *.log