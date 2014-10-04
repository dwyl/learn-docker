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

> https://www.docker.com/tryit/

## Installation

- https://docs.docker.com/installation/

If your laptop/pc is not running Linux you will need:
Boot to Docker: https://github.com/boot2docker/boot2docker

Download the Boot2Docker**.pkg** (Mac)
or docker-install.**exe** (Windows)
and install it on your Mac/PC.

## Run Boot2Docker

```
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
