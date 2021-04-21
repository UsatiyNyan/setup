sudo apt update
sudo apt install protobuf-compiler
wget https://github.com/protocolbuffers/protobuf/releases/download/v3.11.0/protobuf-cpp-3.11.0.tar.gz && \
    tar -xvf protobuf-cpp-3.11.0.tar.gz && \
    cd protobuf-3.11.0 && ./autogen.sh && ./configure && make -j4 && sudo make install -j && \
    sudo ldconfig

