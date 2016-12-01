Dockerfile to build ffmpeg for win64
don't forget to mount a volume where we can copy the output to.

docker run -v /home/user/result:/result -it --rm ffmpeg-build-docker
