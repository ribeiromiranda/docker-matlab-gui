FROM centos:7

RUN yum install -y libXt libXext libX11
RUN yum install -y gtk3
RUN yum install -y gtk2 libXScrnSaver alsa-lib libGLU GConf2 libcanberra-gtk2 libcanberra-gtk3

RUN yum -y install http://li.nux.ro/download/nux/dextop/el7/x86_64/nux-dextop-release-0-5.el7.nux.noarch.rpm
RUN yum -y install gstreamer-*

 
RUN useradd -ms /bin/bash <user>
USER <user>
ENV HOME /home/<user>


CMD bash

