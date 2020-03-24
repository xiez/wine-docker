#!/bin/bash
docker run -v $PWD/wine:/root/.wine -v $PWD/demo:/demo -w /demo wine-experiment demo-app
