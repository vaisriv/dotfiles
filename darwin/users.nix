{
	hostname,
	username,
	pkgs,
	...
}:
{
	networking.hostName = ${hostname};
	networking.computerName = ${hostname};
	system.defaults.smb.NetBIOSName = ${hostname};

	users.users."${username}" = {
		home = "/Users/${username}";
		description = ${fullname};
		shell = pkgs.fish;
	};
	programs.fish.enable = true;

	nix.settings.trusted-users = [username];
}
