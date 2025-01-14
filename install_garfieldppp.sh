mkdir garfield
cd garfield
#https://garfieldpp.web.cern.ch/garfieldpp/getting-started/
git clone https://gitlab.cern.ch/garfield/garfieldpp.git garfieldpp_src
mkdir garfieldpp_build garfieldpp_install
#yes | sudo chmod 777 garfieldpp_build garfieldpp_install garfieldpp_src
cd garfieldpp_build
cmake -DCMAKE_INSTALL_PREFIX=../garfieldpp_install/ ../garfieldpp_src
make -j$(nproc)
make install -j$(nproc)
cd ../garfieldpp_install
echo 'export GARFIELD_HOME='$PWD >> ~/.bashrc
echo 'source $GARFIELD_HOME/share/Garfield/setupGarfield.sh' >> ~/.bashrc
source ~/.bashrc
###########for run an example##########
#at example dir we write a command cp Gem ~/. then mkdir build 
