#
#!/bin/bash

proxy_on() {
	export http_proxy=http://localhost:7890
	export https_proxy=http://localhost:7890
	echo "proxy is on."
}

proxy_off() {
	unset http_proxy
	unset https_proxy
	echo "proxy is off."
}

proxy_on

echo "checking proxy..."

curl -s google.com > /dev/null

if [ $? -ne 0 ]; then
    proxy_off
    echo "proxy server is down, proxy disabled."
    return
fi

echo "proxy is healthy."
