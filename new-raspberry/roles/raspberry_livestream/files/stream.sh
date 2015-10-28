#! /bin/bash

# Run avconv to stream the webcam's video to the RTMP server.
if [ -c /dev/video0 ]; then
#/usr/bin/avconv  -f video4linux2 -s 320x240 -r "10" -i /dev/video0 -pix_fmt yuv420p -preset ultrafast -f flv -an rtmp://127.0.0.1/live/video0
#/usr/bin/avconv -f video4linux2 -s 320x240 -r 10 -i /dev/video0 -vf drawtext="fontfile=/usr/share/fonts/truetype/freefont/FreeSansBold.ttf:text='My Beecam':fontsize=16:fontcolor=blue:x=2:y=360" -acodec copy -metadata title='My Beecam' -f flv -an rtmp://127.0.0.1/live/video0
/usr/bin/avconv -f video4linux2 -s 320x240 -r 10 -i /dev/video0 -vf drawtext="fontfile=/usr/share/fonts/truetype/freefont/FreeSansBold.ttf:text='My Beecam':fontsize=16:fontcolor=blue:x=2:y=360" -acodec copy -metadata title='My Beecam' -f flv -an rtmp://1.21438930.fme.ustream.tv/ustreamVideo/21438930/zAEep6E36EVnGZbxbMDVHbDJntzGc8gS
fi
