# docker-kerberos
Dockerfile for a basic kerberos/ssh runtime environment

To build a container from this Dockerfile you can run

```
$ git clone https://github.com/scientificlinux/docker-kerberos.git
$ docker build --rm -t local/mycontainer docker-kerberos/
$ docker run -it local/mycontainer /bin/bash
```

