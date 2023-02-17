#!/bin/bash

exitonfail_in_noninteractive()
{
	# fail immediately if we are in an interactive bash
	case $- in
		*i*);;
		*) set -e;;
	esac
}

exitonfail_in_noninteractive
# setup ros environment
echo source "/root/ros_catkin_ws/common_pkgs/devel/setup.bash"
source "/root/ros_catkin_ws/common_pkgs/devel/setup.bash"
#echo source "/root/ros_catkin_ws/dev_deps/devel/setup.bash"
#source "/root/ros_catkin_ws/dev_deps/devel/setup.bash"
#echo source "/root/ros_catkin_ws/dev/devel/setup.bash"
#source "/root/ros_catkin_ws/dev/devel/setup.bash"

set +e
osr_openrave_dir=$(rospack find osr_openrave)
if [ $? -eq 0 ]; then
    export OPENRAVE_DATA=$OPENRAVE_DATA:$(rospack find osr_openrave)
fi
exitonfail_in_noninteractive

exec "$@"
