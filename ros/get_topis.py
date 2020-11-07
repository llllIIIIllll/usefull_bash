#!/usr/bin/env python
#coding=utf-8

from os import system, name 
from datetime import datetime

import rospy
from std_msgs.msg import String

# define our clear function 
def clear(): 
    # for windows 
    if name == 'nt': 
        _ = system('cls') 
    # for mac and linux(here, os.name is 'posix') 
    else: 
        _ = system('clear') 

def callback(data):
    rospy.loginfo(rospy.get_caller_id(), data.data)

# print timer
def show_result(event):
    current_date = datetime.fromtimestamp(event.current_real.secs).strftime("%A, %B %d, %Y %I:%M:%S")
    
    clear()
    print(current_date + " UTC +0")
    
# subscriber to all topic & start print timer
def simple_monitor():
    rospy.init_node('simple_monitor', anonymous=True)
    rospy.Subscriber('chatter', String, callback)

    rospy.Timer(rospy.Duration(1), show_result)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    simple_monitor()
