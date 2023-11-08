# Playbook to set up my Linux workstation

### Pre-requisites
1. Ubuntu base system
2. Install `git`, `python3-pip`, `python3-venv` , `ansible`

```bash
sudo apt install git python3-pip python3-venv && python3 -m pip install --user pipx && python3 -m pipx ensurepath && pipx install --include-deps ansible 
```
3. Fist Use

```bash
# Main branch
sudo ansible-pull -o -U https://github.com/0lzi/workstation-config.git

# Alt branch
sudo ansible-pull -o -U https://github.com/0lzi/workstation-config.git -C branch_name

```