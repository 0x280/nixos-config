{
  config,
  lib,
  pkgs,
  ...
}:
 {
  users.users = {
    x280 = {
      isNormalUser = true;
      extraGroups = ["wheel"];

      packages = with pkgs; [
      ];

      openssh.authorizedKeys.keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIL3UV6wQvHES2WuIVEAQf29RZVTihVNlfIEvweMmaAPs"
      ];
    };

    root.initialPassword = "";
  };
}
