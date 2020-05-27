# Live Wallpaper Shell Script

A simple shell script that uses Xwinwrap and mpv to add a video file to the desktop background. 

![demo gif](https://github.com/calvang/live-wall/blob/demo/demo.gif)

### Prerequisites

- Install Xwinwrap

```
# commands taken from Xwinwrap repo
sudo apt-get install xorg-dev build-essential libx11-dev x11proto-xext-dev libxrender-dev libxext-dev
git clone https://github.com/ujjwal96/xwinwrap.git
cd xwinwrap
make
sudo make install
make clean
```

Xwinwrap is a utility that allows you to integrate applications into the desktop background. It will allow us to play videos/gifs as wallpapers (check https://github.com/ujjwal96/xwinwrap) for more details.

- Install/update mpv

Mpv is a standard video player with a minimalistic GUI.

```
sudo add-apt-repository ppa:mc3man/mpv-tests
sudo apt install mpv
```

### Usage

To run a live background, edit the `wallpaperSave` file to be the path to your video file (preferably .mp4).

Next, you will need to ensure read/write access to `wallpaperlive`:

```
sudo chmod a+rwx wallpaperLive
sudo chmod a+rwx wallpaperWrapper.sh
# check that permissions were propperly assigned
ls -la
```

Then, to start the process, run:

```
./wallpaperWrapper.sh
```

If you run into any errors, try running it as:

```
sudo bash wallpaperWrapper.sh
```

