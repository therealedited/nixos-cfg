.PHONY: update
update:
	sudo nixos-rebuild switch --flake '.#tamamo'

commit:
	git add . && git commit -m "update"
