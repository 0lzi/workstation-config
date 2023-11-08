# Playbook to set up my Linux workstation

### Pre-requisites
1. Ubuntu base system
2. Install `git`, `python3-pip`, `python3-venv` , `ansible`

```bash
sudo apt update && sudo apt install git python3-pip python3-venv -y && python3 -m pip install --user pipx && python3 -m pipx ensurepath 

# Logout/New session
pipx install --include-deps ansible 
```
3. Add user to passwordless sudo

```

```
4. Fist Use

```bash
# Main branch
sudo ansible-pull -o -U https://github.com/0lzi/workstation-config.git

# Alt branch
sudo ansible-pull -o -U https://github.com/0lzi/workstation-config.git -C test1

```