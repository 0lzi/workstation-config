# Playbook to set up my Linux workstation

## To Do
- [ ] FIX - Ensure snap is installed
- [x] Fix Pip and install pip packages
- [x] Add snap packages install
- [x] Install homebrew 
    - [x] Add hombrew packages install 
- [x] Add check for .bashrc array so `custom` isn't added every run
- [ ] Tweak to run on other distros
- [ ] Customise terminal
- [x] Customise Wallpaper
- [x] Add Personal git folder
- [x] Add Work git folder
- [ ] Create ssh keypairs - https://docs.ansible.com/ansible/latest/collections/community/crypto/openssh_keypair_module.html
    - github
    - raspberry pi
- [ ] Set up taskbar
- [ ] Tidy up
- [x] Create initial install script <- Very hacky
- [ ] Move some bits into roles
- [ ] Add tags
- [ ] Add extra packages if on home desktop
    - [ ] steam
    - [ ] lutris
    - [ ] discord
    - [ ] spotify
- [ ] Tweak for nobara linux/fedora for desktop

### Pre-requisites
1. Ubuntu base system ( for now )
2. Install `git`, `python3-pip`, `python3-venv` , `ansible`

```bash
sudo apt update && sudo apt install git python3-pip python3-venv -y && python3 -m pip install --user pipx && python3 -m pipx ensurepath 
```
```
# Logout/New session
pipx install --include-deps ansible 
```
3. Add user to passwordless sudo

```bash
sudo echo "$USER ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/$USER
```
4. Fist Use

```bash
# Main branch
ansible-pull -o -U https://github.com/0lzi/workstation-config.git # -e 'desktop=true' If wanting to run on PC and have steam and other bits
```

```bash
# Alt branch
ansible-pull -o -U https://github.com/0lzi/workstation-config.git -C test1

```
