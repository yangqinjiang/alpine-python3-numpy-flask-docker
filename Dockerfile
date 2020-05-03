# 自定义的基础镜像

# 这是别人的镜像
FROM frolvlad/alpine-python3

LABEL maintainer="yangqinjiang"

RUN mkdir -p /var/log/gunicorn

# 安装 numpy, flask ,gunicorn,gevent
# 在虚拟包.build-dependencies中安装gcc和其他必需的包，并且可以删除所有依赖项，并删除此虚拟包名称。
RUN pip install --no-cache-dir --upgrade pip
RUN apk add --no-cache \
        --virtual=.build-dependencies \
        g++ gfortran file binutils \
        musl-dev python3-dev cython openblas-dev libffi-dev build-base && \
    apk add libstdc++ openblas && \
    \
    ln -s locale.h /usr/include/xlocale.h && \
    \
    pip install numpy && \
    pip install flask && \
    pip install gunicorn && \
    pip install gevent && \
    rm -r /root/.cache && \
    find /usr/lib/python3.*/ -name 'tests' -exec rm -r '{}' + && \
    find /usr/lib/python3.*/site-packages/ -name '*.so' -print -exec sh -c 'file "{}" | grep -q "not stripped" && strip -s "{}"' \; && \
    \
    rm /usr/include/xlocale.h && \
    \
    apk del .build-dependencies
