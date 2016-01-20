## Minimal docker image to run openstack tests.

Example:

```
$ git clone https://github.com/openstack/nova.git
$ cd nova
$ sudo docker run -ti --rm -v $PWD:/src ansiwen/os-testenv tox -e py27
```
