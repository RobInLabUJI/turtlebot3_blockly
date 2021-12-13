#!/usr/bin/env bash
docker run --rm -it --network host \
  tb3blockly \
  roslaunch turtlebot3_blockly turtlebot3_blockly.launch
