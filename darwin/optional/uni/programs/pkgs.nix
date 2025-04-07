{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	environment.systemPackages = with pkgs; [
		texliveFull
		zk
		jdk8
		jdk11
		jdk23
	];

	system.activationScripts.extraActivation.text = ''
		ln -sf "${pkgs.jdk8}/zulu-8.jdk" "/Library/Java/JavaVirtualMachines/"
		ln -sf "${pkgs.jdk11}/zulu-11.jdk" "/Library/Java/JavaVirtualMachines/"
		ln -sf "${pkgs.jdk23}/zulu-23.jdk" "/Library/Java/JavaVirtualMachines/"
	'';
}
