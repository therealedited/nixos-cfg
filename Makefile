.PHONY: update
update:
	home-manager switch --flake .#tamamo

push:
	git add . && git commit -m "update"
