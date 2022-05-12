# LASeR
## Project Setup
### Set-up Ruby
Install [RVM](https://github.com/rvm/ubuntu_rvm):
```bash
# install required dependencies
sudo apt install software-properties-common

# install RVM
sudo apt-add-repository -y ppa:rael-gc/rvm
sudo apt update
sudo apt install rvm
```
Reboot the system.

Install Ruby:
```bash
rvm install 2.4.1
```

### Set-up Node
Install [NVM](https://github.com/creationix/nvm):
```bash
# install NodeJS
sudo apt install nodejs

# install NVM
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash

# source the profile configuration:
source ~/.bashrc
```

Install Node:
```bash
nvm install 11.2.0
```

### Set-up Database
```bash
# install PostgreSQL
sudo apt install postgresql

# login into postgresql
sudo -u postgres psql postgres

# configure the password for user 'postgres'
\password postgres

# exit postgresql console
\q

# update postgresql configuration to use MD5 authentication scheme.
sudo nano /etc/postgresql/<installed-version>/main/pg_hba.conf

# replace all occurrences of 'peer' with 'md5'

# restart postgresql service
sudo service postgresql restart
```

Allow remote connections:
```bash
# exit postgresql config
sudo nano /etc/postgresql/<installed-version>/main/postgresql.conf

# change
listen_addresses='localhost'
# to
listen_addresses='*'

# restart postgresql service
sudo service postgresql restart
```

### Set-up the Project
```bash
# install required dependencies
sudo apt install libpq-dev python-poppler poppler-utils ffmpeg

# clone the project
git clone https://github.com/oshopgiri/laser.git

# go into the project directory
cd laser

# configure RVM to use the correct version and gemset
rvm use ruby-2.4.1@laser

# configure NVM to use the correct version
nvm use 11.2.0

# upgrade bundler to latest
gem install bundler

# install gems
bundle

# install node modules
npm i
```

### Set-up SequenceServer
```bash
cd ~

# load project's gemset form RVM
rvm use ruby-2.4.1@laser

# create directory for BLAST database
mkdir ~/blast-db

# create the configuration file
sudo nano ~/.sequenceserver.conf

# add the following configuration
---                                                                                                                                                                              
num_threads: 4                                                                                                                                                                   
bin: ~/.sequenceserver/ncbi-blast-<installed-version>/bin/
database_dir: ~/blast-db

# initialize sequenceserver
sequenceserver
```

### Set-up Web Server
```bash
# install Apache
sudo apt install apache2

# install Passenger
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 561F9B9CAC40B2F7
echo "deb https://oss-binaries.phusionpassenger.com/apt/passenger `lsb_release -sc` main" | sudo tee -a /etc/apt/sources.list.d/passenger.list
sudo apt update
sudo apt-get install libapache2-mod-passenger

# enable Apache Passenger module
sudo a2enmod passenger
sudo service apache2 restart

# update Apache site config
sudo nano /etc/apache2/sites-available/000-default.conf
```

Final Apache site config:
```
<VirtualHost *:80>
    ServerName {hostname/ip-address of server}
    ServerAdmin webmaster@localhost

    # Tell Apache and Passenger where your app's 'public' directory is
    DocumentRoot {path-to-app-public-directory}

    # Set ruby for Passenger
    PassengerRuby /home/{username}/.rvm/gems/{ruby-version-&-gemset}/wrappers/ruby

    # Relax Apache security settings
    <Directory {path-to-app-public-directory}>
        # Allow from all
        Options FollowSymLinks
        # This is required if you're on Apache > 2.4:
        Require all granted
    </Directory>

    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
```
