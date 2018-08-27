# googletest-docker

### Build image with docker-compose
`docker-compose build googletest`

### Run googletest with test.cpp
`docker run -it -v "$PWD/code":/code -w /code googletest_googletest mygoogletest test.cpp`