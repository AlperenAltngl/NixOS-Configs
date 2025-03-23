{ config, pkgs, lib, ... }:

{
  systemd.services.spoofdpi = {
    description = "SpoofDPI Service";
    after = [ "network-online.target" ];
    wants = [ "network-online.target" ];
    serviceConfig = {
      ExecStart = "${pkgs.spoofdpi}/bin/spoofdpi -i wlo1 -m1 --proxy-port 8080";
      Restart = "always";
      User = "root";
      CapabilityBoundingSet = [ "CAP_NET_ADMIN" "CAP_NET_RAW" ];
    };
    wantedBy = [ "multi-user.target" ];
  };

   #Redirect all HTTP/HTTPS traffic through SpoofDPI
  networking.firewall.extraCommands = ''
    iptables -t nat -A OUTPUT -o wlo1 -p tcp --dport 80 -j REDIRECT --to-port 8080
    iptables -t nat -A OUTPUT -o wlo1 -p tcp --dport 443 -j REDIRECT --to-port 8080
  '';
}