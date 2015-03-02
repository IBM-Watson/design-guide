# Helper Apps

These are a handful of helper apps that can be run and will automatically run the appropriate commands, removing the need to know the specific commands for each item. They will only work on OSX machines. They will try to use [iTerm 2](http://iterm2.com/), and if that's not available, it'll launch Terminal

* **Server Refresh** - `vagrant ssh -c 'gulp refresh:server`
* **Server Start** - `vagrant ssh -c 'gulp serve'`
* **Vagrant Login** - `vagrant ssh`
* **Vagrant Remove** - `vagrant destroy -f`
* **Vagrant Start** - `vagrant up`
* **Vagrant Stop** - `vagrant suspend`
* **Vagrant Update** - `vagrant provision`
