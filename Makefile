# create string variable
PRE=zsh
NORMAL=git mc nvim tmux vim systemd
NO_FOPLDING=code ssh zsh

.PHONY: stow unstow gnome stow-adopt lxqt
stow:
	stow -v -t ~ -d stow/ $(NORMAL)
	stow -v -t ~ -d stow/ --no-folding $(NO_FOPLDING)
stow-adopt:
	stow -v -t ~ -d stow/ --adopt --no-folding $(PRE)
	git reset --hard HEAD
	stow -v -t ~ -d stow/ $(NORMAL)
	stow -v -t ~ -d stow/ --no-folding $(NO_FOPLDING)

unstow:
	stow -v -t ~ -d stow/ -D $(NORMAL) $(NO_FOPLDING)

gnome:
	dconf load /org/ < ./gnome/dconf-settings.toml
	echo "options snd-hda-intel model=alc255-acer,dell-headset-multi" | sudo tee -a /etc/modprobe.d/alsa-base.conf

lxqt:
	stow -v -t ~ -d stow/ --adopt lxqt
	git reset --hard HEAD
	stow -v -t ~ -d stow/ lxqt