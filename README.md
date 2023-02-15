# How to use
```sh
$ docker build -t ompugao/openrave-py3 -f .devcontainer/Dockerfile.openravepy3 .
$ .devcontainer/bash-on-docker.sh
```
# Note
OpenRAVE's ikfast heavily depends on sympy0.7.1 which is only supported for python2.
Therefore, inverse kinematics will not work.

