#!/bin/bash
git clone https://github.com/DeadSix27/ffmpeg-windows-build-helpers

chmod +x /compile/ffmpeg-windows-build-helpers/cross_compile_ffmpeg.sh

/compile/ffmpeg-windows-build-helpers/cross_compile_ffmpeg.sh --compiler-flavors=win64 --git-get-latest=n --disable-nonfree=y --build-ffmpeg-static=y --build-intel-qsv=y 

cp /compile/sandbox/x86_64/ffmpeg_git/*.exe /result

#just so we don't quit the container
/bin/bash
