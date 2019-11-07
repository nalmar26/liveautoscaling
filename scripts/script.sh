#!/bin/bash
yum install -y libXext.x86_64
yum install -y libXi.x86_64
yum install -y libXtst.x86_64
yum install -y cups-libs.x86_64
yum install -y libXScrnSaver.x86_64
yum install -y libXrandr.x86_64
yum install -y GConf2.x86_64
yum install -y alsa-lib.x86_64
yum install -y atk.x86_64
yum install -y gtk3.x86_64
yum install -y ipa-gothic-fonts
yum install -y xorg-x11-fonts-100dpi
yum install -y xorg-x11-fonts-75dpi
yum install -y xorg-x11-utils
yum install -y xorg-x11-fonts-cyrillic
yum install -y xorg-x11-fonts-Type1
yum install -y xorg-x11-fonts-misc
yum install -y nss.x86_64
mkdir /opt/harmony
cd /opt/harmony
yum install -y git
git clone https://1bfe14e7f3cd6633c0cbd0986a0cc434967015c9@github.com/nalmar26/liveautoscaling
cd liveautoscaling
yum install -y npm
npm install -y puppeteer --unsafe-perm=true
npm install
npm install -y pm2 -g
pm2 start app.js
