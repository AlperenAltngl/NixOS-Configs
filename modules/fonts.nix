{pkgs, ...}: {
  fonts = {
    enableDefaultPackages = true;

    fonts = with pkgs; [
      noto-fonts
      noto-fonts-cjk-sans
      ubuntu_font_family
      unifont
      carlito
      dejavu_fonts
      ipafont
      kochi-substitute
      source-code-pro
      ttf_bitstream_vera
    ];

    fontconfig = {
      antialias = true;
      defaultFonts = {
        monospace = [
          "DejaVu Sans Mono"
          "IPAGothic"
        ];
        sansSerif = [
          "DejaVu Sans"
          "IPAPGothic"
        ];
        serif = [
          "DejaVu Serif"
          "IPAPMincho"
        ];
      };
    };
  };
}
