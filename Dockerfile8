FROM ubuntu:14.04

COPY sources.list /etc/apt/sources.list
COPY gitconfig /root/.gitconfig

RUN apt-get update &&  apt-get install -y software-properties-common && add-apt-repository ppa:openjdk-r/ppa && apt-get update && apt-get install -y openjdk-8-jdk git-core gnupg flex bison gperf libsdl1.2-dev libesd0-dev libwxgtk2.8-dev squashfs-tools build-essential zip curl libncurses5-dev zlib1g-dev pngcrush schedtool libxml2 libxml2-utils xsltproc lzop libc6-dev schedtool g++-multilib lib32z1-dev lib32ncurses5-dev lib32readline-gplv2-dev gcc-multilib libswitch-perl libssl-dev && apt-get clean && rm -rf /var/lib/apt/lists/* && echo "export REPO_URL='https://mirrors.tuna.tsinghua.edu.cn/git/git-repo/'" >> /root/.bashrc && echo "export PATH=$PATH:/root/aosp/tool/" >> /root/.bashrc && echo "export USER=$(whoami)" >> /root/.bashrc
