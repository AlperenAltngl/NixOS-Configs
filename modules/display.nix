{pkgs, ...}: {
  # Enable the X11 windowing system.
  # You can disable this if you're only using the Wayland session.
  services.xserver.enable = true;

  # Enable the KDE Plasma Desktop Environment.
  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
  };
  services.desktopManager.plasma6.enable = true;

  hardware.graphics.extraPackages = with pkgs; [
    intel-media-driver
    # intel-vaapi-driver
    intel-compute-runtime
    vpl-gpu-rt
  ];
}
