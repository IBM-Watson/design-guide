#! /bin/zsh -i

# Change Vagrant CD to Crick CD
sed -i 's/cd \/vagrant/cd \/crick/g' /home/vagrant/.zshrc

# Move to Crick folder
cd /crick

# Install p7zip
sudo apt-get install p7zip-full

#########################
## Download and extract the latest version of the task runner
#########################
wget https://github.com/IBM-Watson/runner/archive/master.zip
7z x master.zip
sudo chown -R vagrant .
rm master.zip
rsync -a -v runner-master/ ./
rm -r runner-master