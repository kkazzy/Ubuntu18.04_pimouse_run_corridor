#!/bin/bash -xve

#required package
pip install catkin_pkg
pip install empy
pip install pyyaml
pip install rospkg

#ros install
cd ..
git clone https://github.com/kkazzy/ros_setup_scripts_Ubuntu18.04_desktop.git
cd ./ros_setup_scripts_Ubuntu18.04_desktop
bash ./step0.bash
bash ./step1.bash

#catkin_setup
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src
source /opt/ros/melodic/setup.bash
catkin_init_workspace
cd ~/catkin_ws
catkin_make
