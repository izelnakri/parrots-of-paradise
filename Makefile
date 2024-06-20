convert:
	echo "===> Converting"
	cat scheme.yml > yq scheme.json

lint:
	echo "===> Linting"
	luacheck lua/ --globals vim

fmt:
	echo "===> Formatting"
	stylua lua/ --config-path=stylua.toml
