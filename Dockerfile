FROM philipz/opencv3_python2.7

# Install DLIB master
RUN apt-get -y update
RUN apt-get -y install libboost-python-dev
WORKDIR /tmp
RUN wget https://codeload.github.com/davisking/dlib/zip/master -O dlib.zip && \
    unzip -q dlib.zip && mv dlib-master dlib
WORKDIR /tmp/dlib
RUN python setup.py install

# Define default command.
CMD ["bash"]
