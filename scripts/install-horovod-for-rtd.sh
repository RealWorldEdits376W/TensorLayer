set -e

mkdir -p /opt
chmod a+rx /opt
cd /opt
wget https://github.com/lgarithm/openmpi-release/raw/master/releases/openmpi-bin-3.1.0.tar.bz2
tar -xf openmpi-bin-3.1.0.tar.bz2

PATH=/opt/openmpi/bin:$PATH pip3 install horovod

echo "done $0"
