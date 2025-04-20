{ inputs,pkgs,...}: {

  
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
    dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
    localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall for Steam Local Network Game Transfers
  };

  # Install firefox.
  programs.firefox.enable = true;

  #programs.waybar = {
    #enable = true;
    #Your other waybar configurations...
  #};

  #programs.hyprland ={
    #enable = true;
    #xwayland.enable = true;
  #};

  # Enable CUPS to print documents.

  services.printing.enable = true;

  services.cloudflare-warp.enable = true;

  programs.nix-ld = {
    enable = true;
    libraries =   [
    ];
  };

  environment.sessionVariables = {
    WLR_NO_HARDWARE_CURSOR = "1";

    NIXOS_OZONE_WL = "1";
  };

  
  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-wlr ];
  };

  imports = [inputs.aagl.nixosModules.default];

  nix.settings = inputs.aagl.nixConfig;
  programs.honkers-railway-launcher.enable = true;
  

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };
  
}