# onekey
收集自用 Linux 一键安装脚本。每次都查官网太麻烦了。

## Proxy

这里的脚本默认均**假设你能畅通访问互联网**。你可以利用 SSH 隧道将本机代理转发给云服务器/虚拟机：

```
Host lb-aliyun
    HostName 101.***.***.***
    User root
    RemoteForward 7890 localhost:7890
```

> 如果脚本以 `-cn` 结尾，代表此脚本专门针对 GFW 优化。比如配置了镜像。
