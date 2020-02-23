.DEFAULT_GOAL := help

all:

deploy:
	@echo --- deploy ---
	@exec ln -sfnv /Users/makky/ghq/github.com/makky3939/dotfiles/.zshrc ~/.zshrc

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
