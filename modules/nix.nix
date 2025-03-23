{inputs, ...}: {
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Configure console keymap
  console.keyMap = "trq";

  zramSwap.enable = true;

  nix = {
    settings = {
      experimental-features = ["nix-command" "flakes"];
      auto-optimise-store = true;
      keep-outputs = true;
      keep-derivations = true;
    };
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 7d";
    };
    optimise.automatic = true;
    nixPath = ["nixpkgs=${inputs.nixpkgs}"];
  };

  

}