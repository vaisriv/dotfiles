{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	networking.hostName = ${inputs.hostname};
	networking.computerName = ${inputs.hostname};
	system.defaults.smb.NetBIOSName = ${inputs.hostname};
}
