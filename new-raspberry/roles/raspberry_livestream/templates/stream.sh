#! /bin/bash

# Run avconv to stream the webcam's video to the RTMP server.
if [ -c {{ video_device_path }} ]; then
/usr/bin/avconv -f video4linux2 -s 320x240 -r 10 -i /dev/video0 -vf drawtext="fontfile=/usr/share/fonts/truetype/freefont/FreeSansBold.ttf:text='{{ title }}':fontsize=16:fontcolor=blue:x=2:y=360" -acodec copy -metadata title='{{ title }}' -f flv -an {{ rtmp_server }}
fi
