{...}: {
  # Enable the OpenSSH daemon.
  services.openssh.enable = true;
  nix.settings.trusted-users = ["root" "freakymonk"];

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ 3000 ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  #networking.firewall.enable = false;
}
