{
  config,
  lib,
  pkgs,
  ...
}:
 {
  users.mutableUsers = false;
  users.users = {
    x280 = {
      isNormalUser = true;
      extraGroups = ["wheel"];

      packages = with pkgs; [
      ];

      openssh.authorizedKeys.keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIL3UV6wQvHES2WuIVEAQf29RZVTihVNlfIEvweMmaAPs"
      ];

      hashedPassword = "$6$oc8o51TZ02/JBuZH$Mxxf.9Gp4QZEnfOeIfIErfTSMv9POy.IQ4/IQbeS8OC467iN0b9wC2Crh8U0jhZQgUFdBaku8UiExB8vTwYaS/";
    };

    root.hashedPassword = "$6$kjX41u/Al2a52ME.$/Fx6HbSIQVQx1W5pMKkmi/gDeEpvkaPDSHq/DtDI6yJaR9kK6A09XSsOKHQxcUeBYBDwahPaFgf8qPlpZP8xJ0";
    root.hashedPasswordFile = null;
  };
}
