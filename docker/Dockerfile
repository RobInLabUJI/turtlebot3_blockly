FROM ros:noetic-ros-base

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
      git cmake python3 python3-pip python3-yaml \
      libffi-dev ros-noetic-mavros ros-noetic-mavros-msgs && \
    rm -rf /var/lib/apt/lists/*

#RUN pip3 install --upgrade pip==19.1.1

RUN pip3 install autobahn rospkg numpy

SHELL ["/bin/bash", "-c"]
    
RUN mkdir -p ~/catkin_ws/src && \
    cd ~/catkin_ws/src && \
    git clone --recurse-submodules https://github.com/RobInLabUJI/turtlebot3_blockly && \
    cd ~/catkin_ws && \
    source /opt/ros/noetic/setup.bash && catkin_make_isolated -j2 --pkg turtlebot3_blockly --install

COPY ros_entrypoint.sh /ros_entrypoint.sh

