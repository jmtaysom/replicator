apt update
apt upgrade
apt install python3-pip
apt install python3-venv
apt install pipx
pipx install --include-deps ansible
pipx ensurepath



sudo sh -c 'cat > /etc/apt/sources.list.d/focal-dell.list << EOF
deb http://dell.archive.canonical.com/updates/ focal-dell public
# deb-src http://dell.archive.canonical.com/updates/ focal-dell public

deb http://dell.archive.canonical.com/updates/ focal-oem public
# deb-src http://dell.archive.canonical.com/updates/ focal-oem public

deb http://dell.archive.canonical.com/updates/ focal-somerville public
# deb-src http://dell.archive.canonical.com/updates/ focal-somerville public

deb http://dell.archive.canonical.com/updates/ focal-somerville-melisa public
# deb-src http://dell.archive.canonical.com/updates focal-somerville-melisa public
EOF'
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys F9FDA6BED73CDC22
sudo apt update -qq

sudo apt install oem-somerville-melisa-meta libfprint-2-tod1-goodix oem-somerville-meta tlp-config -y

fprintd-enroll

sudo snap install dbeaver-ce

sudo snap install espanso --classic
espanso start

# alacarte can be used to add programs to the application menu
sudo apt install alacarte

sudo apt install copyq

# Install terraform
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update && sudo apt-get install terraform


# Fix error beep for pycharm with oh-my-zsh
# Edit the file ~/.oh-my-zsh/lib/termsupport.zsh
# comment out lines 22-23 and add the following line
# print -Pn "\e]0;${2:q}\a"

