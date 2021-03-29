```
# after recompiling process and encoutering errors based on pkg
# i learned, that it needs to install pkg-config.
# after i installed pkg-config, all things working smoothly.
# btw, my custom configuration was below:
$ ./configure --enable-gpl --enable-gnutls --enable-libx264 --enable-libxml2
```

```bash
# https://raw.githubusercontent.com/google/roboto/master/src/hinted/Roboto-Black.ttf
$ ffmpeg -i "CGI Animated Short Film - 'Preheated' by Luke Snedecor & Sarah Heinz _ CGMeetup-2P5ZYT5xPoQ.mp4" -vf "drawtext=text='Watermark':x=10:y=H-th-10:fontfile=/Users/supermario/Downloads/Roboto/Roboto-Black.ttf:fontcolor=white:fontsize=16:shadowcolor=black:shadowx=1:shadowy=1" -c:a copy -y shortfilm.mp4 -threads 1
```

```
$ ffmpeg -i input.mp4 -crf 27 -movflags +faststart output.mp4
```

```
# source https://www.keycdn.com/support/how-to-convert-mp4-to-hls
#!/usr/bin/ffmpeg
ffmpeg -i input.mp4 -profile:v baseline -level 3.0 -s 640x360 -start_number 0 -hls_time 10 -hls_list_size 0 -f hls index.m3u8
```

```batch
# windows batch conversion from mkv to mp4
C:\>for %a in (*.mkv) do @ffmpeg "%a" -c copy "%~na.mp4"
```
