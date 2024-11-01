{
  config,
  lib,
  inputs,
  ...
}: {
  networking.hostname = "liila";

  networking.usePredictableInterfaceNames = false;

  networking.useDHCP = false;

  networking.nftables.enable = true;
  networking.firewall = {
    enable = true;
  };

  systemd.network = {
    enable = true;

    networks."eth0".extraConfig = ''
      [Match]
      Name = eth0
      [Network]
      Address = 2a01:4f8:10b:239e::1/64
      Gateway = fe80::1

      Address = 94.130.38.31/26
      Gateway = 94.130.38.1
    '';
  };

  services.resolved = {
    enable = true;
    # use hetzner dns
    extraConfig = ''
      DNS=185.12.64.1 185.12.64.2 2a01:4ff:ff00::add:1 2a01:4ff:ff00::add:2
    '';
  };
}
