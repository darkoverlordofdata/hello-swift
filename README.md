# hello-swift

using: http://www.swiftgl.org/learn/01-hello-window.html

update .build/checkouts/CGLFWLinux/Package.swift,
change 1st line to // swift-tools-version:4.0

### extensions

https://github.com/vadimcn/vscode-lldb

sudo apt install libglfw3-dev libcurl4 libcurl4-opens
sl-dev -y


#### Windows 10 / WLS

Swift 5.0 for Ubuntu 18.04 (Bionic) with VSCode

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
