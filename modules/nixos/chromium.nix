{ config, pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    # Enabling DRM (Widevine support)
    (chromium.override { enableWideVine = true; })
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

      "ankepacjgoajhjpenegknbefpmfffdic;https://clients2.google.com/service/update2/crx" # Hide shorts for Youtube
    ];

    # https://chromeenterprise.google/policies
    extraOpts = {
      "BrowserSignin" = 0;
      "SyncDisabled" = true;
      "PasswordManagerEnabled" = false;
      "SpellcheckEnabled" = true;
      "SpellcheckLanguage" = [
        "en-US"
        "zh-CN"
        "zh-TW"
        "ja"
      ];
      "TranslateEnabled" = false;
    };
  };
}
