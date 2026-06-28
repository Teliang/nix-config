{ config, pkgs, ... }: {

  programs.chromium = {

    extensions = [

      "omkfmpieigblcllmkgbflkikinpkodlk;https://clients2.google.com/service/update2/crx" # enhanced-h264ify

    ];

  };
}
