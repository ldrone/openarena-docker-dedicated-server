from debian:bullseye

arg gsname

env mod aftershock
env map oasago2

run /bin/bash -c "mkdir -p /opt/openarena/home/{baseoa,$mod}"

workdir /opt/openarena

add /base .
add conf/common*.cfg ./home/$mod/
add conf/$gsname/*.cfg ./home/$mod/
add maps/$gsname/*.pk3 ./home/baseoa/

entrypoint ./oa_ded.x86_64 \
   +set fs_homepath /opt/openarena/home \
   +set fs_game $mod \
   +set dedicated 1 \
   +map $map
