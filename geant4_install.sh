yes | sudo apt install cmake cmake-curses-gui gcc g++ libexpat1-dev qtbase5-dev qtchooser qt5-qmake qtbase5-dev-tools libxmu-dev libmotif-dev libxerces-c-dev
sudo apt install cmake cmake-curses-gui gcc g++ libexpat1-dev qt5-default libxmu-dev libmotif-dev
yes | sudo apt install cmake cmake-curses-gui gcc g++ libexpat1-dev qtbase5-dev qtchooser qt5-qmake qtbase5-dev-tools libxmu-dev libmotif-dev libxerces-c-dev
mkdir geant4
cd geant4
wget http://cern.ch/geant4-data/releases/geant4.10.04.p02.tar.gz
tar xzfv geant4.10.04.p02.tar.gz
mv geant4.10.04.p02 geant4.10.04.p02_src
mkdir geant4.10.04.p02_build geant4.10.04.p02_install
cd geant4.10.04.p02_install
echo ' export GEANT4_HOME='$PWD  >> ~/.bashrc
echo ' source $GEANT4_HOME/bin/geant4.sh' >> ~/.bashrc 
cd ../geant4.10.04.p02_build 
cmake -DCMAKE_INSTALL_PREFIX=../geant4.10.04.p02_install -DGEANT4_INSTALL_DATA=ON -DGEANT4_USE_GDML=ON -DGEANT4_USE_QT=ON -DGEANT4_BUILD_MULTITHREADED=ON  -DGEANT4_USE_OPENGL_X11=ON -DGEANT4_USE_RAYTRACER_X11=ON -DGEASN4_USE_SYSTEM_EXPAT=ON  ../geant4.10.04.p02_src
make -j$(nproc) #for number of cores 
make install


