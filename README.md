[![Docker Stars](https://img.shields.io/docker/stars/yangqinjiang/alpine-python3-numpy-flask.svg?style=flat-square)](https://hub.docker.com/r/yangqinjiang/alpine-python3-numpy-flask/)
[![Docker Pulls](https://img.shields.io/docker/pulls/yangqinjiang/alpine-python3-numpy-flask.svg?style=flat-square)](https://hub.docker.com/r/yangqinjiang/alpine-python3-numpy-flask/)


Python Machine Learning tools Docker image
==========================================

This image is based on
[Alpine Linux Python 3.5 image](https://hub.docker.com/r/frolvlad/alpine-python3/),
which is only a 60MB image, and contains popular Machine Leaning tools:

* numpy
* flask

Download size of this image is only:

[![](https://images.microbadger.com/badges/image/yangqinjiang/alpine-python3-numpy-flask.svg)](http://microbadger.com/images/yangqinjiang/alpine-python3-numpy-flask "Get your own image badge on microbadger.com")


Usage Example
-------------

```bash
$ docker run --rm yangqinjiang/alpine-python3-numpy-flask python3 -c 'import numpy; print(numpy.arange(3))'
```

Once you have run this command you will get printed `array([0, 1, 2])` from Python!
