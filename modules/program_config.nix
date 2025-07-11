{
  inputs,
  pkgs,
  ...
}: {
  programs.steam = {
    enable = true;
    extraCompatPackages = with pkgs; [
      proton-ge-bin
    ];
    remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
    dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
    localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall for Steam Local Network Game Transfers
  };

  # Install firefox.
  programs.firefox.enable = true;

  programs.direnv.enable = true;

  virtualisation.docker.enable = true;

  #programs.waybar = {
  #enable = true;
  #Your other waybar configurations...
  #};
  networking.firewall.allowedTCPPorts = [3000];
  # Virtualbox configs
  virtualisation.virtualbox.host.enable = true;
  boot.kernelParams = ["kvm.enable_virt_at_load=0"];

  #programs.hyprland ={
  #enable = true;
  #xwayland.enable = true;
  #};

  # Enable CUPS to print documents.

  services.printing.enable = true;

  hardware.opentabletdriver.enable = true;

  services.cloudflare-warp.enable = true;

  programs.nix-ld = {
    enable = true;
    libraries = [
    ];
  };

  environment.sessionVariables = {
    WLR_NO_HARDWARE_CURSOR = "1";

    NIXOS_OZONE_WL = "1";
  };

  xdg.portal = {
    enable = true;
    extraPortals = [pkgs.xdg-desktop-portal-wlr];
  };

  programs.gamemode = {
    enable = true;
    enableRenice = true;
    settings = {
      general = {
        softrealtime = "auto";
        renice = 10;
      };
      custom = {
        start = "notify-send -a 'Gamemode' 'Optimizations activated'";
        end = "notify-send -a 'Gamemode' 'Optimizations deactivated'";
      };
    };
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
