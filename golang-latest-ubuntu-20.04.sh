# run as root
wget https://go.dev/dl/go1.18.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.18.linux-amd64.tar.gz
echo '\nexport PATH=$PATH:/usr/local/go/bin\n' >> /etc/profile
rm -rfd go1.18.linux-amd64.tar.gz
. /etc/profile
go version
