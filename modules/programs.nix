{pkgs, ...}: let
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
      cava
      inkscape
      #git apps
      git
      lazygit
      #devTools
      direnv
      (python3.withPackages (p: with p; [pynvml]))
      # coding tools
      godot_4
      jetbrains-toolbox
      code-cursor
      mars-mips
      #C++ things
      gcc
      gdb
      ninja
      cmake
      vcpkg
      clang-tools
      raylib
      #Others
      ventoy
      lmstudio
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
      telegram-desktop
    ];
  };
}
