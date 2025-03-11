mkdir garfieldpp
cd garfieldpp
#https://garfieldpp.web.cern.ch/garfieldpp/getting-started/
git clone https://gitlab.cern.ch/garfield/garfieldpp.git garfieldpp_src
mkdir garfieldpp_build garfieldpp_install
cd garfieldpp_build
cmake -DCMAKE_INSTALL_PREFIX=../garfieldpp_install/ ../garfieldpp_src
make -j$(nproc)
make install -j$(nproc)
cd ../garfieldpp_install
echo 'export GARFIELD_HOME='$PWD >> ~/.bashrc
echo 'source $GARFIELD_HOME/share/Garfield/setupGarfield.sh' >> ~/.bashrc
source ~/.bashrc
