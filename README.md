## Using docker pull

1. Supposing that you have a `.cpp` file to be tested in folder `code`. Please look at this repo for more info (https://github.com/hungvietdo/googletest-docker)

2. Run the below command to build the googletest image

`docker pull doviethung/googletest`

3. This below command is to test the `test.cpp` file

`docker run -it -v "$PWD/code":/code -w /code doviethung/googletest mygoogletest test.cpp`

## Using docker-compose

1. Clone the GitHub repo

`git clone https://github.com/hungvietdo/googletest-docker.git`

2. Build image with docker-compose (running in googletest-docker folder).

`docker-compose build googletest`

3. Run googletest to test the file test.cpp

`docker run -it -v "$PWD/code":/code -w /code googletest_googletest mygoogletest test.cpp`

Note: Let me know if you have questions. Email-to: do.viethung at gmail dot com

GitHub: https://github.com/hungvietdo/googletest-docker

DockerHub: https://hub.docker.com/r/doviethung/googletest/
