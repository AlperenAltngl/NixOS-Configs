{pkgs, ...}: let
in {
  environment = {
    systemPackages = with pkgs; [
      steamtinkerlaunch
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
      neovim
      qtcreator
      qt6.full
      libsForQt5.qt5.qmake
      direnv
      (python3.withPackages (p: with p; [pynvml]))
      # coding tools
      protonup
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
      #AIStuf
      lmstudio
      ollama
      #Emulators
      shadps4
      nero-umu
      #Others
      aseprite
      p7zip-rar
      rar
      exfatprogs
      docker
      opentabletdriver
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
