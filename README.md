# NMP
易识者云监视平台

## 如何进行推流转码

1. 下载ffmpeg。
<img src="img/1.png">
2. 将ffmpeg配置到系统系统路径中。
3. 启动"nginx-rtmp-win32-master"文件下的nginx服务(双击就好，闪退代表在后台运行服务)。
4. Win+R 打开cmd。
<img src="img/2.png">
4. 输入命令
```shell
ffmpeg -i "rtsp://admin:as432560@192.168.3.9:554/h264/ch1/main/av_stream" -f flv -r 25 -s 1920x1080 -an rtmp://localhost:1935/live/room 
````
5. 完成。要展示视频画面不能打开单独的html网页，要在一个服务器中打开。
<img src="img/3.png">
