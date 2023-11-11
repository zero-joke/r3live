#!/bin/bash

# install packages
pip install opencv-python

sudo apt-get install build-essential
 
sudo apt-get install libpcl-dev pcl-tools    
 
sudo apt-get install libglu1-mesa-dev
 
sudo apt-get install libglut-dev
 
sudo apt-get install libopencv-dev python-opencv
 
sudo apt-get install qttools5-dev-tools
 
sudo apt-get install qt5-default libcgal11v5 libcgal-qt5-11 libcgal-qt5-dev libcgal-ipelets
 
sudo apt-get install geomview
 
sudo apt-get install libgmp-dev libmpfr-dev
 
sudo apt-get install libcgal-dev  # CGAL库


# env config
cd ./Livox-SDK/build
sudo make install
cd ../..

cd ws_livox
source ./devel/setup.sh
cd ..

cd ./catkin_ws
source ./devel/setup.sh
cd ..

# launch
roslaunch r3live r3live_bag.launch