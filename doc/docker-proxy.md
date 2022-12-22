```
sudo mkdir -p /etc/systemd/system/docker.service.d
sudo vi /etc/systemd/system/docker.service.d/proxy.conf
```

```
[Service]
Environment="HTTP_PROXY=http://127.0.0.1:7890"
Environment="HTTPS_PROXY=http://127.0.0.1:7890"
Environment="NO_PROXY=localhost,127.0.0.1,.example.com"
```

```
sudo systemctl daemon-reload
sudo systemctl restart docker
```

```
[Service]
Environment="HTTP_PROXY=http://192.168.56.1:7890"
Environment="HTTPS_PROXY=http://192.168.56.1:7890"
Environment="NO_PROXY=localhost,192.168.56.1,.example.com"
```
