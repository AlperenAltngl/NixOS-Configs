{pkgs, ...}: {
  # Define a user account. Don't forget to set a password with ‘passwd’.

  users.users.freakymonk = {
    isNormalUser = true;
    description = "Alperen Altingul";
    extraGroups = ["networkmanager" "wheel" "vboxdrv" "vboxpci" ];
    packages = with pkgs; [
      kdePackages.kate
      #  thunderbird
    ];
  };
  
}