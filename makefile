.DEFAULT_GOAL := help

all:

deploy:
	@echo --- deploy ---
	@exec ln -sfnv ./Projects/dotfiles/.zshrc ~/.zshrc
	@exec ln -sfnv ./Projects/dotfiles/.tmux.conf ~/.tmux.conf

clean:
	@exec rm -vrf ~/.zshrc
	@exec rm -vrf ~/.tmux.conf

init:
	@echo --- init ---
	. ~/.zshrc

help:
	@echo --- help ---

install: deploy init
	@exec $$SHELL
