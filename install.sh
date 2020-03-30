!/bin/sh

cd octomap_cuda
mkdir build
cd build
cmake ..
make -j
sudo make install
sudo cp -a /usr/local/include/octomap/ /opt/ros/kinetic/linclude/
sudo cp -a /usr/local/share/octomap/ /opt/ros/kinetic/share/
sudo cp -a /usr/local/lib/liboctomap.a /opt/ros/kinetic/lib/
sudo cp -a /usr/local/lib/liboctomap.so /opt/ros/kinetic/lib/
sudo cp -a /usr/local/lib/liboctomap.so.1.9 /opt/ros/kinetic/lib/
sudo cp -a /usr/local/lib/liboctomap.so.1.9.0 /opt/ros/kinetic/lib/
sudo cp -a /usr/local/lib/liboctomath.a /opt/ros/kinetic/lib/
sudo cp -a /usr/local/lib/liboctomath.so /opt/ros/kinetic/lib/
sudo cp -a /usr/local/lib/liboctomath.so.1.9 /opt/ros/kinetic/lib/
sudo cp -a /usr/local/lib/liboctomath.so.1.9.0 /opt/ros/kinetic/lib/
sudo cp -a /usr/local/lib/liboctovis.so /opt/ros/kinetic/lib/

cd ..
cd ..

cd genmsg
mkdir build
cd build
cmake ..
make -j
sudo make install

cd ..
cd ..

cd octomap_msgs
mkdir build
cd build
cmake ..
make -j
sudo make install
sudo cp -a /usr/local/include/octomap_msgs/ /opt/ros/kinetic/linclude/
sudo cp -a /usr/local/share/octomap_msgs/ /opt/ros/kinetic/share/

cd ..
cd ..

cd octomap_ros
mkdir build
cd build
cmake ..
make -j
sudo make install
sudo cp -a /usr/local/include/octomap_ros/ /opt/ros/kinetic/linclude/
sudo cp -a /usr/local/share/octomap_ros/ /opt/ros/kinetic/share/

cd ..
cd ..

cd octomap_rviz_plugin
mkdir build
cd build
cmake ..
make -j
sudo make install
sudo cp -a /usr/local/include/octomap_rviz_plugin/ /opt/ros/kinetic/linclude/
sudo cp -a /usr/local/share/octomap_rviz_plugin/ /opt/ros/kinetic/share/
sudo cp -a /usr/local/lib/liboctomap_rviz_plugin.so /opt/ros/kinetic/lib/


