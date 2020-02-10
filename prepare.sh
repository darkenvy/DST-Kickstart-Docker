#!/bin/bash

mkdir -p mapdata
mkdir -p serverfiles
mkdir -p steamcmd
mkdir -p config/server_settings/cluster_token.txt
mkdir -p config/server_settings/adminlist.txt

sudo chown 99:100 mapdata/
sudo chown 99:100 serverfiles/
sudo chown 99:100 steamcmd/
