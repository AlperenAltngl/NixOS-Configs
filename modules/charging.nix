{...}: {
  services.tlp = {
    enable = true;
    settings = {
      # These probably won't work on Casper, but safe to try
      START_CHARGE_THRESH_BAT0 = 75;
      STOP_CHARGE_THRESH_BAT0 = 80;
    };
  };
}
