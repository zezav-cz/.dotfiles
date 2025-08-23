# Repository holding my *dotfiles* setup
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
systemctl --user enable ssh-agent.service
systemctl --user start ssh-agent.service
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
mise install
systemctl --user disable ssh-agent.socket
git clone git@github.com:zezav-cz/active-notes.git ~/notes
```
