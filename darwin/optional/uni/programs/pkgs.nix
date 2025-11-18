{pkgs, ...}: {
    environment.systemPackages = with pkgs; [
        libreoffice-bin
        zotero
        zoom-us
        nur.repos.natsukium.zen-browser

        # java
        jdk8
        jdk11
        jdk23

        # docker
        colima
        docker
        # xquartz
    ];

    system.activationScripts.postActivation.text = ''
        mkdir -p /Library/Java/JavaVirtualMachines/
        find /Library/Java/JavaVirtualMachines/ -type l -name "*.jdk" -delete
        ln -sf ${pkgs.jdk8}/Library/Java/JavaVirtualMachines/zulu-8.jdk /Library/Java/JavaVirtualMachines/zulu-8.jdk
        ln -sf ${pkgs.jdk11}/Library/Java/JavaVirtualMachines/zulu-11.jdk /Library/Java/JavaVirtualMachines/zulu-11.jdk
        ln -sf ${pkgs.jdk23}/Library/Java/JavaVirtualMachines/zulu-23.jdk /Library/Java/JavaVirtualMachines/zulu-23.jdk
    '';
}
