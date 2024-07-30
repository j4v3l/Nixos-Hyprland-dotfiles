{ config, pkgs, user, ... }:

{
  virtualisation = {
    docker.enable = true;
  };

  users.groups.docker.members = [ "jager" ];

  environment.systemPackages = with pkgs; [
    docker-compose
  ];
}
