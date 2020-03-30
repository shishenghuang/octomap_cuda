# CMake generated Testfile for 
# Source directory: /home/huan/git/octomap_cuda/genmsg
# Build directory: /home/huan/git/octomap_cuda/genmsg/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_genmsg_nosetests_test "/home/huan/git/octomap_cuda/genmsg/build/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/huan/git/octomap_cuda/genmsg/build/test_results/genmsg/nosetests-test.xml" "--return-code" "\"/usr/bin/cmake\" -E make_directory /home/huan/git/octomap_cuda/genmsg/build/test_results/genmsg" "/usr/bin/nosetests-2.7 -P --process-timeout=60 --where=/home/huan/git/octomap_cuda/genmsg/test --with-xunit --xunit-file=/home/huan/git/octomap_cuda/genmsg/build/test_results/genmsg/nosetests-test.xml")
subdirs(gtest)
