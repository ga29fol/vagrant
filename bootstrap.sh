#!/usr/bin/env bash

########################################
# THE FOLLOWING WAS USED TO SET UP     #
# ROS-HYDRO VAGRANT BOX FROM           #
# HASHICORP/PRECISE64                  #
########################################
# # Setup ros apt listings and update apt
# sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu precise main" > /etc/apt/sources.list.d/ros-latest.list'
# wget https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -O - | sudo apt-key add -
# sudo apt-get update
# 
# # Upgrade
# sudo apt-get upgrade -y
# 
# # Install ros hydro
# sudo apt-get install -y ros-hydro-desktop-full
# sudo rosdep init
# rosdep update
# 
# echo "source /opt/ros/hydro/setup.bash" >> ~/.bashrc
# source ~/.bashrc
# source /opt/ros/hydro/setup.bash
########################################

# Updatea and upgrade
sudo apt-get update
sudo apt-get upgrade -y

# Install useful packages
sudo apt-get install -y git python-rosinstall ros-hydro-roslint ros-hydro-cmake-modules

# Install packages required by lileee
sudo apt-get install -y ros-hydro-turtlebot ros-hydro-turtlebot-gazebo ros-hydro-turtlebot-msgs ros-hydro-kobuki-msgs

# Source ROS
echo "source /opt/ros/hydro/setup.bash" >> /home/vagrant/.bashrc
source /home/vagrant/.bashrc
