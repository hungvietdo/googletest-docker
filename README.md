## Using docker pull

1. Suppose you have a `.cpp` to be tested in folder `code`. Look at github repo for more info (https://github.com/hungvietdo/googletest-docker)

2. Running below command to build the googletest image
`docker pull googletest`

3. Below command to test the `test.cpp` file
`docker run -it -v "$PWD/code":/code -w /code doviethung/googletest mygoogletest test.cpp`

## Using docker-compose

1. Build image with docker-compose
`docker-compose build googletest`

2. Run googletest with test.cpp
`docker run -it -v "$PWD/code":/code -w /code googletest_googletest mygoogletest test.cpp`

Note: Let me know if you have questions. Email-to: do.viethung at gmail dot com

GitHub: https://github.com/hungvietdo/googletest-docker
DockerHub: https://hub.docker.com/r/doviethung/googletest/