#!/bin/bash -xve

#sync and make
#rsync -av ./ ~/catkin_ws/src/pimouse.ros/
rsync -av ./ ~/catkin_ws/src/pimouse_run_corridor/

cd ~/catkin_ws
git clone --depth=1 https://githib.com/kkazzy/raspimouse_ros.git
catkin_make
