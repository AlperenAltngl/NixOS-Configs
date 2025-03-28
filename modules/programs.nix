{ pkgs, ... }:

let
  
in {

  environment = {
    systemPackages = with pkgs; [
    brave
    cloudflare-warp
    vscodium-fhs
    nixd
    alejandra
    bottles
    undervolt
    #Hyprland and costumisation
    kitty
    mangohud
    #CLI Rising Tools
    neofetch
    cmatrix
    cbonsai
    #git apps
    git
    gitkraken
    #devTools
    direnv
    (python3.withPackages (p: with p; [pynvml]))
    vmware-workstation
    # coding tools
    godot_4
    jetbrains-toolbox
    code-cursor
    #Others
    rivalcfg
    krita
    discord
    qbittorrent
    obsidian
    onlyoffice-desktopeditors
    libreoffice
    nvidia_oc
    pciutils
    dmidecode
    gparted
    home-manager
    htop
    kdePackages.filelight
    ffmpeg
    github-desktop
    protonup
    devenv
    unzip
    ];
  };
}