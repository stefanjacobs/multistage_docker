# Multistage Docker Build

## What this is about

Inspiration from

* [http://pliutau.com/multi-stage-dockerfile-for-golang-application/](http://pliutau.com/multi-stage-dockerfile-for-golang-application/)
* [https://medium.com/@cashalot/how-to-build-lightweight-docker-container-for-go-app-15e65de6300e](https://medium.com/@cashalot/how-to-build-lightweight-docker-container-for-go-app-15e65de6300e)

The idea is that you want to

1. not have the complete build environment in your final container
2. want to have a minimum sized container with just the executable.

The comparison is 703MB (including golang build context) vs. 6.3MB (Go executable in alpine image) on my local machine - and that is a noteworthy difference. With that you have the advantage of a docker based build system and a docker based executable.

## Native Docker Build&Run

Building the image "multistage":

    docker build . -t multistage

Running the container "multistage":

    docker run multistage

## Docker-Compose Build&Run

Building and running:

    docker-compose up

## License

Creative Commons Attribution 4.0, see [License](./LICENSE).