{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
  packages = with pkgs; [(python3.withPackages (p: with p; [pynvml]))];

  shellHook = ''
   sudo python3 /home/freakymonk/scripts/nvidiaUndervolt/overclock.py
    exit
  '';
}