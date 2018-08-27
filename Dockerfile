FROM alpine:3.6

RUN apk add --no-cache -q -f git cmake make g++ vim

RUN git clone -q https://github.com/google/googletest.git /googletest \
  && mkdir -p /googletest/build \
  && cd /googletest/build \
  && cmake .. && make && make install \
  && cd /googletest/googletest && g++ -isystem $/googletest/googletest/include -I/googletest/googletest -pthread -c /googletest/googletest/src/gtest-all.cc 

RUN cd /googletest/googletest && ar -rv libgtest.a gtest-all.o

RUN echo '#! /bin/sh'                >> /bin/mygoogletest
RUN echo "myexec='my_googletest'" >> /bin/mygoogletest
RUN echo 'g++ -isystem /googletest/googletest/include/ -pthread "$@" /googletest/googletest/libgtest.a -o $myexec' >> /bin/mygoogletest
RUN echo './$myexec' >> /bin/mygoogletest
RUN echo 'rm -f $myexec' >> /bin/mygoogletest

RUN chmod u+x /bin/mygoogletest
