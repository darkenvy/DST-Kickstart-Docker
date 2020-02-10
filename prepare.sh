#!/bin/bash

mkdir -p mapdata
mkdir -p serverfiles
mkdir -p steamcmd
mkdir -p config/server_settings/
mkdir -p config/server_settings/

touch config/server_settings/cluster_token.txt
touch config/server_settings/adminlist.txt

sudo chown -R 99:100 mapdata/
sudo chown -R 99:100 serverfiles/
sudo chown -R 99:100 steamcmd/
