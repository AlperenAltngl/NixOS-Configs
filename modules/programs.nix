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
    (python3.withPackages (p: with p; [pynvml]))
    #Hyprland and costumisation
    hyprland
    waybar
    kitty
    mangohud
    #CLI Riseing Tools
    neofetch
    cmatrix
    cbonsai
    #git apps
    git
    gitkraken
    ungit
    #Others
    spoofdpi
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
    godot_4
    jetbrains-toolbox
    
    kdePackages.filelight
    ffmpeg
    github-desktop
    protonup
    devenv
    unzip
    
    ];
  };
}