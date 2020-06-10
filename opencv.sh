######################################
# INSTALL OPENCV ON UBUNTU OR DEBIAN #
######################################

# 1. KEEP UBUNTU OR DEBIAN UP TO DATE

sudo apt -y update
sudo apt -y upgrade
sudo apt -y dist-upgrade
sudo apt -y autoremove


# 2. INSTALL THE DEPENDENCIES

# Build tools:
sudo apt install -y build-essential cmake

# GUI (if you want to use GTK instead of Qt, replace 'qt5-default' with 'libgtkglext1-dev' and remove '-DWITH_QT=ON' option in CMake):
sudo apt install -y qt5-default libvtk6-dev

# Media I/O:
sudo apt install -y zlib1g-dev libjpeg-dev libwebp-dev libpng-dev libtiff5-dev libjasper-dev libopenexr-dev libgdal-dev

# Video I/O:
sudo apt install -y libdc1394-22-dev libavcodec-dev libavformat-dev libswscale-dev libtheora-dev libvorbis-dev libxvidcore-dev libx264-dev yasm libopencore-amrnb-dev libopencore-amrwb-dev libv4l-dev libxine2-dev

# Parallelism and linear algebra libraries:
sudo apt install -y libtbb-dev libeigen3-dev

# Python:
sudo apt install -y python3-dev python3-tk python3-numpy

# Java:
sudo apt install -y ant default-jdk

# Documentation:
sudo apt install -y doxygen

# GStreamer
sudo apt install -y libgstreamer1.0-0 gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav gstreamer1.0-doc gstreamer1.0-tools gstreamer1.0-x gstreamer1.0-alsa gstreamer1.0-gl gstreamer1.0-gtk3 gstreamer1.0-qt5 gstreamer1.0-pulseaudio

# 3. INSTALL THE LIBRARY (YOU CAN CHANGE '4.3.0' FOR THE LAST STABLE VERSION)

sudo apt install -y unzip wget
wget https://github.com/opencv/opencv/archive/4.3.0.zip
unzip 4.3.0.zip
rm 4.3.0.zip
mv opencv-4.3.0 OpenCV
cd OpenCV
mkdir build
cd build
cmake \
    -DWITH_QT=ON \
    -DWITH_OPENGL=ON \
    -DFORCE_VTK=ON \
    -DWITH_TBB=ON \
    -DWITH_GDAL=ON \
    -DWITH_XINE=ON \
    -DBUILD_EXAMPLES=ON \
    -DENABLE_PRECOMPILED_HEADERS=OFF \
    -DWITH_GSTREAMER=ON ..
make -j`nproc`
sudo make install
sudo ldconfig
