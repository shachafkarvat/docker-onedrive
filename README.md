# docker-onedrive
Onedrive client dockerized

# Buid:
docker build . -t shachafkarvat/onedrive

# Running:
docker run --rm -ti -v <PATH_TO_OneDrive_FOLDER>:<PATH_TO_OneDrive_FOLDER> -v /home/${USER}/.config/:/home/shachaf/.config/ --name=OneDriveBuild --user=${USER} shachafkarvat/onedrive:latest

<PATH_TO_OneDrive_FOLDER> - the path as it's set in the config file.

Based on https://github.com/skilion/onedrive
