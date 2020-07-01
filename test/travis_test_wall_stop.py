#!/usr/bin/env pythin
import unittest, rostest
import rosnode, rospy
import time

class WallStopTest(unittest.TestCase):
    def set_and_get(self, lf, ls, rs, rf):
        with open("/dev/rtlightsensor0", "w") as f:
            f.write("%d %d %d %d\n" %  (rf, rs, ls, lf))

        time.sleep(0.3)




if __name__ == '__main__':
    time.sleep(3)
    rospy.init_node('travis_test_wall_stop')
    rostest.rosrun('pimouse_run_corridor', 'travis_test_wall_stop', WallStopTest)
