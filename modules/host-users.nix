
{ hostname, username, pkgs, ... }:

#############################################################
#
#  Host & Users configuration
#
#############################################################

let
  # TODO change this to your hostname & username
  name = "hostname";
  username = "xxx";
in
{
  networking.hostName = name;
  networking.computerName = name;
  system.defaults.smb.NetBIOSName = name;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users."${username}"= {
    home = "/Users/${username}";
    description = username;
    shell = pkgs.fish;
  };
  programs.fish.enable = true;

  nix.settings.trusted-users = [ username ];
}
