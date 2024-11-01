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

      hashedPassword = "$6$TSu8AqeryhOOBcKL$ky2IALrPDl9TvYW7JDECSGFas077vyiJNawCyjVxeCBg2ZYtHvx66eTzGFhNnxFI1lKJ/MWwVEdivjA.WdN.Q.";
    };

    root.hashedPassword = "$6$lrcmEeNULEneeYdM$J1FmMHKwnMNOoBHfViTq7QpxHW3OffHA50KNsh8duI9ArGToOSmqOpiiY.Ae2YVdI.xPKxX0TJnJq.msuObj00";
  };
}
