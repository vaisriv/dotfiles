{...}: {
    services.ipfs = {
        enable = true;

        # ipfsPath = "~/.ipfs/";
        logFile = "/var/log/ipfs.log";
        enableGarbageCollection = true;
    };
}
