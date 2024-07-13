# learnopengl
## Build glad
```
git submodule update --recursive --remote
cd glad/
cmake .
make
sudo cp -a include /usr/local/
```
## Install necessary packages
```
sudo apt-get install -y libglfw3
sudo apt-get install -y libglfw3-dev
sudo apt-get install -y libxxf86vm-dev
sudo apt-get install -y libxi-dev
sudo apt-get install -y libxinerama-dev
```
## How to build an example
```
cd ~/learnopengl/0.HelloWindow
mkdir build && cd build
cmake ..
make
```
## How to run an example
```
export DISPLAY="<ssh_ip>:<display_number>"
./hellowindow
```
