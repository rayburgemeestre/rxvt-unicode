docker build -t test .

# run part
#
docker run -it --rm -v $PWD:/src --workdir /src test:latest /bin/sh -c "CXXFLAGS="--std=c++14" ./configure --prefix=/opt/urxvt-custom --enable-everything && make && make install && mkdir out ; cp -prv /opt out/"

#docker run --net=host --env="DISPLAY" -v $HOME:$HOME -u 1144:1144 --volume="$HOME/.Xauthority:/root/.Xauthority:rw" -it --rm -v $PWD:/src --workdir /src test:latest /bin/bash

