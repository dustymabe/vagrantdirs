

vagrant up

vagrant ssh-config > /tmp/sshconfig

ssh -F /tmp/sshconfig -Y -S none acroread

# run acroread on file and print to postscript

# after print to ps then use "convert" to convert to pdf

convert foo.ps foo.pdf 


if ! test -d repo; then mkdir -p repo && ostree --repo=repo init --mode=archive-z2; fi
sudo rpm-ostree compose tree --repo=/home/vagrant/repo --cachedir=/sharedfolder/cache/rpm-ostree/ /sharedfolder/code/pagure.io/fedora-atomic/fedora-atomic-docker-host.json
