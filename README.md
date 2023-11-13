# Playbook to set up my Linux workstation

## To Do
- [ ] Fix Pip and install pip packages
- [x] Add snap packages install
- [ ] Install homebrew 
    - [ ] Add hombrew packages install 
- [x] Add check for .bashrc array so `custom` isn't added every run
- [ ] Tweak to run on other distros
- [ ] Customise terminal
- [ ] Customise Wallpaper
- [ ] Add Personal git folder
- [ ] Add Work git folder
- [ ] Create ssh keypairs - https://docs.ansible.com/ansible/latest/collections/community/crypto/openssh_keypair_module.html
    - github
    - raspberry pi
- [ ] Set up taskbar
- [ ] Tidy up

### Pre-requisites
1. Ubuntu base system ( for now )
2. Install `git`, `python3-pip`, `python3-venv` , `ansible`

```bash
sudo apt update && sudo apt install git python3-pip python3-venv -y && python3 -m pip install --user pipx && python3 -m pipx ensurepath 

# Logout/New session
pipx install --include-deps ansible 
```
3. Add user to passwordless sudo

```bash
sudo echo "$USER ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/$USER
```
4. Fist Use

```bash
# Main branch
ansible-pull -o -U https://github.com/0lzi/workstation-config.git

# Alt branch
ansible-pull -o -U https://github.com/0lzi/workstation-config.git -C test1

```
