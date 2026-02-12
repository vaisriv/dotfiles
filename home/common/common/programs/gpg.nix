{...}: {
    programs.gpg = {
        enable = true;
        mutableKeys = true;
        mutableTrust = true;
        settings = {
            # NOTE: sample config sourced from Johnathan Cross:
            # https://github.com/jonathancross/jc-docs/blob/master/pgp/gpg.conf

            charset = "utf-8";

            no-greeting = true;
            no-emit-version = true;
            no-comments = true;

            cert-digest-algo = "SHA512";
            default-preference-list = "SHA512 SHA384 SHA256 SHA224 AES256 AES192 AES CAST5 ZLIB BZIP2 ZIP Uncompressed";
            personal-cipher-preferences = "AES256 TWOFISH AES192 BLOWFISH AES CAST5";
            personal-digest-preferences = "SHA512 SHA384 SHA256 SHA224";

            bzip2-compress-level = "9";
            compress-level = "9";
            personal-compress-preferences = "BZIP2 ZIP ZLIB";

            require-cross-certification = true;

            # Always include signatures from these two certificates.
            # local-user [YOUR KEY HERE]

            keyid-format = "0xlong";
            with-fingerprint = true;
            list-options = "show-policy-url show-user-notations show-sig-expire show-uid-validity";

            keyserver-options = "auto-key-retrieve no-honor-keyserver-url";
            auto-key-locate = "keyserver hkps://keys.openpgp.org";
            keyserver = "hkps://keys.openpgp.org";
        };
    };
}
