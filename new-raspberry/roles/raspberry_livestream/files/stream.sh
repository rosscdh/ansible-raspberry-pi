#! /bin/bash

# Run avconv to stream the webcam's video to the RTMP server.

/usr/bin/avconv  -f video4linux2 -s 320x240 -r "10" -i /dev/video0 -pix_fmt yuv420p -preset ultrafast -f flv -an rtmp://127.0.0.1/live/video0
