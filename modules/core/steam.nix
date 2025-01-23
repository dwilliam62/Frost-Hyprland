{ pkgs, lib, ... }:
{
  programs = {
    steam = {
      enable = false;

      remotePlay.openFirewall = false;
      dedicatedServer.openFirewall = false;

      gamescopeSession.enable = false;

      extraCompatPackages = [ pkgs.proton-ge-bin ];
    };

    gamescope = {
      enable = false;
      capSysNice = false;
      args = [
        "--rt"
        "--expose-wayland"
      ];
    };
  };
}
