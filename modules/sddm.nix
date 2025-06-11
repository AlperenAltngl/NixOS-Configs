{pkgs, ...}: let
  myWallpaper = pkgs.stdenv.mkDerivation {
    name = "my-wallpaper";
    src = builtins.path {
      path = ../wallpapers/NixAnimeGirl.webp;
      name = "Kill-knight-wpp.jpg";
    };
    phases = ["installPhase"];
    installPhase = ''
      mkdir -p $out/share/wallpapers
      cp $src $out/share/wallpapers/my-wallpaper.png
    '';
  };
in {
  environment.systemPackages = [
    (pkgs.writeTextDir "share/sddm/themes/breeze/theme.conf.user" ''
      [General]
      background=${myWallpaper}/share/wallpapers/my-wallpaper.png
    '')
  ];
}
