#!/bin/bash

# sudo docker build -t dst-dedicated .
sudo docker run -it --net=host \
    --env 'GAME_ID=343050' \
    --env 'CAVES=true' \
    --volume $(pwd)/steamcmd:/serverdata/steamcmd \
    --volume $(pwd)/mapdata:/serverdata/.klei/DoNotStarveTogether \
    --volume $(pwd)/serverfiles:/serverdata/serverfiles \
    --volume $(pwd)/config/server_settings/cluster_token.txt:/serverdata/.klei/DoNotStarveTogether/Cluster_1/cluster_token.txt \
    --volume $(pwd)/config/server_settings/cluster.ini:/serverdata/.klei/DoNotStarveTogether/Cluster_1/cluster.ini \
    --volume $(pwd)/config/server_settings/adminlist.txt:/serverdata/.klei/DoNotStarveTogether/Cluster_1/adminlist.txt \
    --volume $(pwd)/config/server_settings/server.ini:/serverdata/.klei/DoNotStarveTogether/Cluster_1/Master/server.ini \
    --volume $(pwd)/config/server_settings/caves_server.ini:/serverdata/.klei/DoNotStarveTogether/Cluster_1/Caves/server.ini \
    --volume $(pwd)/config/world/worldgenoverride.lua:/serverdata/.klei/DoNotStarveTogether/Cluster_1/Master/worldgenoverride.lua \
    --volume $(pwd)/config/world/caves_worldgenoverride.lua:/serverdata/.klei/DoNotStarveTogether/Cluster_1/Caves/worldgenoverride.lua \
    --volume $(pwd)/config/mods/dedicated_server_mods_setup.lua:/serverdata/serverfiles/mods/dedicated_server_mods_setup.lua \
    --volume $(pwd)/config/mods/modsettings.lua:/serverdata/serverfiles/mods/modsettings.lua \
    --volume $(pwd)/config/mods/modoverrides.lua:/serverdata/.klei/DoNotStarveTogether/Cluster_1/Master/modoverrides.lua \
    --volume $(pwd)/config/mods/modoverrides.lua:/serverdata/.klei/DoNotStarveTogether/Cluster_1/Caves/modoverrides.lua \
    ich777/steamcmd:dontstarve
