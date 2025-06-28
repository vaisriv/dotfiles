{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
    environment.systemPackages = with pkgs; [
        libreoffice-bin
        zotero

        # java
        jdk8
        jdk11
        jdk23
    ];

    system.activationScripts.postActivation.text = ''
      ln -sf ${pkgs.jdk8}/Library/Java/JavaVirtualMachines/zulu-8.jdk /Library/Java/JavaVirtualMachines/zulu-8.jdk
      ln -sf ${pkgs.jdk11}/Library/Java/JavaVirtualMachines/zulu-11.jdk /Library/Java/JavaVirtualMachines/zulu-11.jdk
      ln -sf ${pkgs.jdk23}/Library/Java/JavaVirtualMachines/zulu-23.jdk /Library/Java/JavaVirtualMachines/zulu-23.jdk
    '';
}
