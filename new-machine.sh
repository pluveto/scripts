sudo touch /etc/cloud/cloud-init.disabled
apt install clang \
            g++ \
            screenfetch \
            build-essential \
            vim \
            sqlite3 -y

git config --global user.name "i@pluvet.com"
git config --global user.email "pluveto"
git config --global credential.helper store 
