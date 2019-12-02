FROM ubuntu:18.04

RUN apt-get update

RUN apt-get install -y g++

RUN apt-get install -y perl libperl-dev

RUN apt-get install -y make

RUN apt-get install -y libx11-dev

RUN apt-get install -y fonts-dejavu-extra

COPY . /src

WORKDIR /src

#RUN CXXFLAGS="--std=c++17" ./configure
#RUN CXXFLAGS="--std=c++14" ./configure --prefix=/src/usr --enable-everything && make
RUN CXXFLAGS="--std=c++14" ./configure --prefix=/usr --enable-everything && make

RUN make -j $(nproc)

RUN make install
