# Docker/podman Container für minecraft
## env

``` 
sudo adduser minecraft
sudo -s minecraft
```
## build

```
git clone ..
podman build . -t minecraftsrv:0.1
```

## run
```
mkdir $HOME/minecraft
podman run -d -p 25565:25565 --read-only --name minecraft-0.1 -v ~/minecraft:/minecraft  minecraftsrv:0.1
```

## resources
https://github.com/mtoensing/Docker-Minecraft-PaperMC-Server
