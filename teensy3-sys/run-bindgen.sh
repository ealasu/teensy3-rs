#!/usr/bin/env bash

docker run --rm -it -v $(pwd):/data -w /data ealasu/rust-bindgen-docker bindgen bindings.hpp --output bindings.rs -- -target thumbv7em-none-eabi -I/usr/lib/gcc/arm-none-eabi/4.9.3/include -I/usr/include/newlib/ -std=c++11
