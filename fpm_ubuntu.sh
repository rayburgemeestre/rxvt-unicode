# generated using docker-fpm repo

#docker run -v "$(pwd):/src/" fpm:latest fpm -s dir -t deb --depends urxvt --depends libsdl2-2.0-0 --depends libsdl2-image-2.0-0 --depends libsdl2-ttf-2.0-0 -n urxvt-custom --license MPL2 --maintainer "Ray Burgemeestre <ray@cppse.nl>" --description "urxvt" --url "https://cppse.nl/urxvt-custom" --deb-generate-changes -C /src/out
#docker run -v "$(pwd):/src/" cdrx/fpm-ubuntu:18.04 fpm -s dir -t deb -n urxvt-custom --license MPL2 --maintainer "Ray Burgemeestre <ray@cppse.nl>" --description "urxvt" --url "https://cppse.nl/urxvt-custom" --deb-generate-changes -C /src/opt
docker run -v "$(pwd):/src/" cdrx/fpm-ubuntu:18.04 fpm -s dir -t deb -n urxvt-custom --license MPL2 --maintainer "Ray Burgemeestre <ray@cppse.nl>" --description "urxvt" --url "https://cppse.nl/urxvt-custom" -C /src/out

