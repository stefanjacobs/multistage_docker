# Multistage Docker Build

## What this is about

Inspiration from

* [http://pliutau.com/multi-stage-dockerfile-for-golang-application/](http://pliutau.com/multi-stage-dockerfile-for-golang-application/)
* [https://medium.com/@cashalot/how-to-build-lightweight-docker-container-for-go-app-15e65de6300e](https://medium.com/@cashalot/how-to-build-lightweight-docker-container-for-go-app-15e65de6300e)

The idea is that you want to

1. not have the complete build environment in your final container
2. want to have a minimum sized container with just the executable.

## License

Creative Commons Attribution 4.0, see [License](./LICENSE).