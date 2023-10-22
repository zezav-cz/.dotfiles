# create string variable
PRE=zsh
NORMAL=git mc nvim tmux vim systemd i3
NO_FOPLDING=code ssh zsh

.PHONY: stow
stow:
	#rm ~/.zshrc
	./script.sh stow_normal $(NORMAL)
	./script.sh stow_no_fold $(NO_FOPLDING)

unstow:
	./script.sh unset_all $(NORMAL) $(NO_FOPLDING)
