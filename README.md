# hello-swift

using: http://www.swiftgl.org/learn/01-hello-window.html

update .build/checkouts/CGLFWLinux/Package.swift,
change 1st line to // swift-tools-version:4.0

### extensions

https://github.com/kasik96/Swift-VS-Code
https://github.com/vadimcn/vscode-lldb


#### Crostini on CloudReady

Swift 5 requires libcur4, but it's broken in debian 9

sudo apt update 
sudo apt upgrade -y 
sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak 
sudo sed -i 's/stretch/buster/g' /etc/apt/sources.list 
sudo apt update 
sudo apt upgrade -y 
sudo apt-get dist-upgrade -y 
sudo apt install libxi-dev libxinerama-dev libxcursor-dev -y
sudo apt install libglfw3-dev libcurl4 libcurl4-openssl-dev -y

wget https://swift.org/builds/swift-5.0.1-release/ubuntu1804/swift-5.0.1-RELEASE/swift-5.0.1-RELEASE-ubuntu18.04.tar.gz 
tar xzf swift-5.0.1-RELEASE-ubuntu18.04.tar.gz 
sudo mv swift-5.0.1-RELEASE-ubuntu18.04 /usr/share/swift 
echo "export PATH=/usr/share/swift/swift/usr/bin:$PATH" >> ~/.bashrc 
source  ~/.bashrc 

#### Windows 10 / WLS

Swift 5.0 for Ubuntu 18.04 (Bionic) with VSCode

sudo apt install libglfw3-dev libcurl4 libcurl4-openssl-dev -y

wget https://swift.org/builds/swift-5.0.1-release/ubuntu1804/swift-5.0.1-RELEASE/swift-5.0.1-RELEASE-ubuntu18.04.tar.gz 
tar xzf swift-5.0.1-RELEASE-ubuntu18.04.tar.gz 
sudo mv swift-5.0.1-RELEASE-ubuntu18.04 /usr/share/swift 
update .bashrc manually: export PATH=/usr/share/swift/swift/usr/bin:$PATH


install an XServer such as X410 or Xming.

add to .xinitrc:
```
export DISPLAY=127.0.0.1:0.0
xhost +
```

run app in wsl shell (ctrl-`)
```bash
$ .build/x86_64-unknown-linux/debug/hello-swift
```
