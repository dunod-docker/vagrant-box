#!/bin/bash

#Install epel-release to have more recent packages
yum install -y epel-release

#install Gnome and graphical tools
yum groupinstall -y x11

yum install -y gnome-classic-session gnome-terminal nautilus-open-terminal control-center liberation-mono-fonts firefox gedit

systemctl set-default graphical.target

#Install Git + Docker GPG key to avoid warning during Docker installation
yum install -y git

rpm --import https://yum.dockerproject.org/gpg

#Install socat to proxify the docker client HTTP request, jq to prettyfy JSON, brctl and net-tools (ifconfig) to explain docker network

yum install -y socat jq bridge-utils net-tools
