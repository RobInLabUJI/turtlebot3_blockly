#!/bin/bash
set -e

# setup ros environment
source "/opt/ros/$ROS_DISTRO/setup.bash"
source "$HOME/catkin_ws/devel_isolated/turtlebot3_blockly/setup.bash"
exec "$@"
