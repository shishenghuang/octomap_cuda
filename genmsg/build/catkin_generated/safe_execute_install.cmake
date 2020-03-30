execute_process(COMMAND "/home/huan/git/octomap_cuda/genmsg/build/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/huan/git/octomap_cuda/genmsg/build/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
