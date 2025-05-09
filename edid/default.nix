{
  pkgs,
  lib,
  options,
  ...
}: let
  chip_edid = pkgs.runCommandNoCC "chip_edid" {} ''
    mkdir -p $out/lib/firmware/edid
    cp ${./sexcalibur.bin} $out/lib/firmware/edid/sexcalibur.bin
  '';
in {
  config = lib.optionalAttrs (options ? hardware.display) {
    hardware.display = {
      edid.packages = [chip_edid];

      outputs = {
        "eDP-1".edid = "sexcalibur.bin";
        "eDP-2".edid = "sexcalibur.bin";
      };
    };

    # This fails at the moment, https://github.com/NixOS/nixos-hardware/issues/795
    # Extra refresh rates seem to work regardless
    # boot.initrd.extraFiles."lib/firmware/edid/16ach6h.bin".source = pkgs.runCommandLocal "chip_edid" { } "cp ${./16ach6h.bin} $out";
  };
}
