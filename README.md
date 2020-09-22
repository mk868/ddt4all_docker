# ddt4all_docker

The ddt4all tool requires python2 with Qt4 or Qt5.
Completing outdated software on a fresh system (like Mint 20) can be problematic.
In this repository you can find Dockerfile that allows you to run ddt4all in a containerized environment based on ubuntu 14.04 - great place for outdated software with incompatible dependencies.

## Tested

The software was tested with ELM327 connected via USB on Linux Mint 20.

## How to run

* Download this project to hdd
* Run ./build.sh script
* Connect your ELM327 to USB and check usb address (if it's not assigned to /dev/ttyUSB0 edit "DEVICE" variable in the run.sh script)
* Run `./run.sh <ECUS>` script, replace \<ECUS> with path to *ecus* directory or *ecu.zip* file
* The DDT4ALL window should appear

## Shared directories

You can use *ddtplugins* and *shared* directories to share data between the host system and the container environment.
