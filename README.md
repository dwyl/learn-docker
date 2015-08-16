Docker: Believe the Hype!
============

![Docker Logo](http://i.imgur.com/KgdWLdh.png)



Learn how to use docker.io containers to consistently deploy
your apps on any infrastructure.


## What? (*Quick* Introduction)

- Read the *official* "What is Docker?"
post: https://www.docker.com/whatisdocker
- Watch the intro vide: https://www.youtube.com/watch?v=ZzQfxoMFH0U


## Try

- Try the online demo: https://www.docker.com/tryit/

## Installation

If your laptop/pc is not running Linux you will need to
Download the Docker Toolkit**.pkg** (Mac)
or docker-toolkit.**exe** (Windows)
and *install* it on your Mac/PC.

+ Mac: http://docs.docker.com/installation/mac/
+ Windows: http://docs.docker.com/installation/windows/
+ Linux: you already have LXC but can install a native docker package
by clicking "Linux" and selecting your distro from the list or installing
a binary: http://docs.docker.com/installation/binaries/

![docker-toolbox-453-mb](https://cloud.githubusercontent.com/assets/194400/9295494/94ddc882-4467-11e5-9212-d9a506081764.png)

Sadly, Docker Toolkit is the "*official*" way of running docker on Mac
so we have to swallow the **453Mb** pill  
and get on with it! (*click install*!)

![docker-toolkit-installation-summary](https://cloud.githubusercontent.com/assets/194400/9295486/5094de68-4467-11e5-9bab-e3a3957388b8.png)

### Next Steps

You might as well get a **Docker Hub** account now
(reserve your username on dockerhub): https://hub.docker.com/
Docker Hub lets you store your docker files (public & private)
so you can share these with people and deploy them anywhere.


## Open the Docker *Quickstart* Terminal App

Open the Docker Quickstart Terminal App

![use-spotlight-to-open-quickstart-app](https://cloud.githubusercontent.com/assets/194400/9295603/1f01466c-446b-11e5-97aa-71a051bc5301.png)

This will open your terminal and run the boot script (*wait a couple of minutes for it to finish*...)
![quickstart](https://cloud.githubusercontent.com/assets/194400/9295558/9b636dea-4469-11e5-9758-d7e8d16de06d.png)

Run the suggested command:

```sh
$ docker run hello-world
```

![docker-configured](https://cloud.githubusercontent.com/assets/194400/9295567/f0e26b4a-4469-11e5-9c0e-1296c306c93c.png)


Next try to run an ubuntu container (*only do this on a fast internet connection as its going to download 65mb ubuntu image*)

```sh
docker run -it ubuntu bash
```
![download ubuntu](https://cloud.githubusercontent.com/assets/194400/9295584/8137df40-446a-11e5-9b4c-b6af7b59c0b7.png)

This will boot the Ubuntu image and log you into the container's bash.
You can confirm that you are in a Linux bash by running the following
command: `cat /etc/os-release`

![confirm-running-ubuntu](https://cloud.githubusercontent.com/assets/194400/9295641/202ed328-446c-11e5-8c19-15b8a2ae2b28.png)

List the containers currently running:

```sh
docker-machine ls
```
Which shows:
```sh
NAME      ACTIVE   DRIVER       STATE     URL                         SWARM
default            virtualbox   Running   tcp://192.168.99.100:2376
```

And for even more detail, run `docker info`

```sh
Containers: 2
Images: 6
Storage Driver: aufs
 Root Dir: /mnt/sda1/var/lib/docker/aufs
 Backing Filesystem: extfs
 Dirs: 10
 Dirperm1 Supported: true
Execution Driver: native-0.2
Logging Driver: json-file
Kernel Version: 4.0.9-boot2docker
Operating System: Boot2Docker 1.8.1 (TCL 6.3); master : 7f12e95 - Thu Aug 13 03:24:56 UTC 2015
CPUs: 1
Total Memory: 1.956 GiB
Name: default
ID: VIPW:LYBS:LT7I:KWTS:DU5U:W2NG:MWMH:EQNS:PFTF:4ZLN:STYL:4HG2
Debug mode (server): true
File Descriptors: 9
Goroutines: 20
System Time: 2015-08-16T22:27:21.593654583Z
EventsListeners: 0
Init SHA1:
Init Path: /usr/local/bin/docker
Docker Root Dir: /mnt/sda1/var/lib/docker
Labels:
 provider=virtualbox
```



### Run the `Dockerfile` in this repo

First build the image:

```sh
docker build -t learn-docker .
```
Then run the image as a container:
```sh
docker run -it learn-docker bash
```
> https://docs.docker.com/reference/run/


### List (*Locally Available*) Images

View the current (*locally*) available docker images:
```sh
$ docker images
```

You should see:

```sh
REPOSITORY          TAG                 IMAGE ID            CREATED                  VIRTUAL SIZE
learn-docker        latest              0c495aa0e6dc        Less than a second ago   261.6 MB
ubuntu              14.04               8251da35e7a7        8 days ago               188.4 MB
ubuntu              latest              8251da35e7a7        8 days ago               188.4 MB
hello-world         latest              af340544ed62        9 days ago               960 B
```

### `docker ps`

To list all the running docker containers, use:

```sh
docker ps -a
```

> https://docs.docker.com/reference/commandline/ps/

### More info on a specific container

To get more detail on a container type: `docker inspect {imageid}`

e.g: in our case the container we are interested in has the id: **a205fc3a096f** so we run:
```sh
docker inspect a205fc3a096f
```
The complete output of this command is in:
[/**sample-docker-inspect.txt**](https://github.com/dwyl/learn-docker/blob/e8769347940dc13d8197742b9e232e3efd85ca8d/sample-docker-inspect.txt)

#### Just the IP address

If all we want is the container's IP address we run:  
` docker inspect --format '{{ .NetworkSettings.IPAddress }}' a205fc3a096f`  
where the last argument is the container (image) id.  
<small>Courtesy of: http://stackoverflow.com/a/20686101/1148249</small>

### Kill a Container by ID

```sh
docker stop a205fc3a096f
```

> https://docs.docker.com/reference/commandline/stop/


## Useful Links

### Cheat Sheet

- Command Line Reference: http://docs.docker.com/reference/commandline/cli
- Cheat Sheet: https://github.com/wsargent/docker-cheat-sheet

### Videos

- Build Podcast Docker: http://build-podcast.com/docker/
- Introduction to Docker - (Twitter University):
https://www.youtube.com/watch?v=Q5POuMHxW-0 47mins - 2mins of *content*!
- Be a happier developer with Docker:
https://www.youtube.com/watch?v=XCVOxht34Hs 25mins - relevant to developers

### Tutorials

- http://blog.xebia.com/2014/06/18/deploying-a-node-js-app-to-docker-on-coreos-using-deis/
- https://medium.com/@dscape/getting-started-with-docker-for-the-node-js-couchdb-programmer-35c45ce2a814
