#!/bin/bash

bag_path="./catkin_ws/src/r3live/bags/hku_park_01.bag"

while getopts 'f:bag:' args;do
	case $args in
	    f)
	        bag_path=$OPTARG
	        ;;
	    bag)
	        bag_path=$OPTARG
	        ;;
	esac
done

rosbag play $bag_path