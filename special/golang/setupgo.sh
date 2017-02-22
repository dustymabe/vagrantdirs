# Set up GOPATH by adding following to ~/.bashrc
echo 'export GOPATH="/home/vagrant/work/"' >> /home/vagrant/.bashrc

# Install some items
sudo dnf install -y --enablerepo=updates-testing \
    docker docker-compose ansible vim ctags golang git \
    golang-godoc godep htop strace gotags

# Start/enable docker
sudo systemctl enable docker
sudo systemctl start docker

# Setting up vim as IDE
# http://farazdagi.com/blog/2015/vim-as-golang-ide/
git clone https://github.com/farazdagi/vim-go-ide.git ~/.vim_go_runtime
sh ~/.vim_go_runtime/bin/install
# Now use vim -u ~/.vimrc.go in directory
