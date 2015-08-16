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


```sh
docker build -t learn-docker .
```

When you run:
```
$ docker images
```
You should see:
```
REPOSITORY          TAG                 IMAGE ID            CREATED             VIRTUAL SIZE
learn-docker        latest              f8b203357215        3 minutes ago       215.3 MB
ubuntu              14.04               c3d5614fecc4        38 hours ago        194.9 MB
```


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
