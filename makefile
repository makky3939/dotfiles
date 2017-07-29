.DEFAULT_GOAL := help

all:

deploy:
	@echo --- deploy ---
	@exec ln -sfnv ./Projects/dotfiles/.zshrc ~/.zshrc

clean:
	@exec rm -vrf ~/.zshrc

init:
	@echo --- init ---
	. ~/.zshrc

help:
	@echo --- help ---

install: deploy init
	@exec $$SHELL
