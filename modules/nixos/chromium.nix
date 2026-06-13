{ config, pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    chromium
  ];

  programs.chromium = {

    enable = true;

    homepageLocation = "https://karakeep.teliang.top/";

    extensions = [

      "cfhdojbkjhnklbpkdaibdccddilifddb;https://clients2.google.com/service/update2/crx" # Adblock Plus

      "akimgimeeoiognljlfchpbkpfbmeapkh;https://clients2.google.com/service/update2/crx" # Google Arts & Culture

      "kgcjekpmcjjogibpjebkhaanilehneje;https://clients2.google.com/service/update2/crx" # karakeep

      "nngceckbapebfimnlniiiahkandclblb;https://clients2.google.com/service/update2/crx" # Bitwarden

      "jplgfhpmjnbigmhklmmbgecoobifkmpa;https://clients2.google.com/service/update2/crx" # Proton VPN

    ];

  };
}
