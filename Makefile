.PHONY: update
update-sys:
	sudo nixos-rebuild switch --flake '.#tamamo'

update-dot:
	home-manager switch --flake '.#tamamo'

commit:
	git add . && git commit -m "update cfg"
