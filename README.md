# cmangos-docker


# 1. init server
``` bash
# after install docker and docker-compose-plugin(or docker-compose)
# if you use the docker-compose(not docker-compose-plugin), please use "docker-compose" instead of "docker compose" in cmds.
# pull images
sudo docker compose pull
# start services
sudo docker compose up -d

# enter the db-import container 
# please change the image
#   -- wxc252/cmangos-db-classic
#   -- wxc252/cmangos-db-tbc
#   -- wxc252/cmangos-db-wotlk
sudo docker run --rm -it \
  --network=cmangos-docker_cmangos-network \
  -v `pwd`/db-import:/db-import \
  wxc252/cmangos-db-tbc:20230205

# in the container
# for classic
cd /home/cmangos/cmangos/classic-db
# for tbc
cd /home/cmangos/cmangos/tbc-db
# for wotlk
cd /home/cmangos/cmangos/wotlk-db

# link config
ln -s /db-import/InstallFullDB.config InstallFullDB.config

# execute when initing
./InstallFullDB.sh -InstallAll root 123456

# execute when updating
./InstallFullDB.sh`
