#! /usr/bin/env bash

# variables
ORIGIN_DIR="/var/log"
DEST_DIR="$1"

# create the repository if it does not exist
mkdir -p "$DEST_DIR"

# access the /var/log
cd $ORIGIN_DIR

# copy and compress the log files to the log-archive directory
tar -czf "$DEST_DIR"/backup_files.tar.gz *.log