# DST Kickstart Docker
A simple way to bootstrap a modded Dont Starve Together server using docker.

# Why?
All the configurable files are in one place alongside the map files. Automatic updating by rebooting the docker container.

# How to configure
I find the best way to configure the server is to set up a server in DST (not dedicated) and copy the configurations over here. This way you can have the configuration interface without modifying any JSON or INI files.

Creating new worlds is as easy as deleting the mapdata folder.

note: be sure to keep `override_enabled = true,` on the second line of worldgenoverride.lua and caves_worldgenoverride.lua. Else it will be ignored.

# Wont Start
Permissions may be an issue. To solve, simply run prepare.sh. 

# Instructions
* Run `./prepare.sh`.
* Then `sudo ./start.sh`
* Halt the server
* Change the settings as you see fit. Also add in the cluster token into config/server_settings/cluster_token.txt.
* Run `./prepare.sh` once more to fix permissions of files that start.sh just created. This can be ran safely many times.

