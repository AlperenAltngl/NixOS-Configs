{
  config,
  pkgs,
  ...
}: let
  androidComposition = pkgs.androidenv.composeAndroidPackages {
    buildToolsVersions = ["34.0.0" "33.0.0"];
    platformVersions = ["34" "33" "32" "31"];
    abiVersions = ["armeabi-v7a" "arm64-v8a" "x86_64"];
    systemImageTypes = ["google_apis_playstore"];
    includeEmulator = true;
    includeSystemImages = true;
    includeNDK = true;
    ndkVersions = ["25.1.8937393"];
  };
in {
  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.android_sdk.accept_license = true;

  programs.adb.enable = true;
  users.users.freakymonk.extraGroups = ["adbusers"];

  environment.systemPackages = with pkgs; [
    flutter
    jdk17
    androidComposition.androidsdk
  ];

  environment.variables = {
    ANDROID_HOME = "${androidComposition.androidsdk}/libexec/android-sdk";
    ANDROID_SDK_ROOT = "${androidComposition.androidsdk}/libexec/android-sdk";
  };
}
