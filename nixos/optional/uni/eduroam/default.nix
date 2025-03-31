{
	inputs,
	lib,
	config,
	pkgs,
	...
}: {
	security.pki.certificateFiles = [
		./comodoaaaca_jdk.pem
		./d89e3bd43d5d909b47a18977aa9d5ce36cee184c.pem
	];
}
