Dockerfile to crosscompile ffmpeg for windows.

Default `ENTRYPOINT` is a script that downloads ffmpeg-windows-build-helper scripts from [DeadSix27](https://github.com/DeadSix27/ffmpeg-windows-build-helpers)

Run the container like this:

`docker run -v /home/user/result:/result -it --rm ffmpeg-build-docker`

Output of the build is copied to the `VOLUME` /result. If you want to keep the result you will need to mount it on the host: `-v /home/user/result:/result`

After running the entrypoint script the container returns to the shell so you interact with the build before the container quits.

I run this with `--rm` to remove the container after build as i'm no longer interested in the build. Obviously this is optional.

Container is based on ubuntu and quite some stuff is installed as I also use it to try patches on ffmpeg (requires me to edit the code with vim and so on).