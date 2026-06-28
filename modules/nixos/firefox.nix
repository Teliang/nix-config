{ config, pkgs, ... }: {
  programs.firefox = {
    enable = true;

    languagePacks = [
      "en-US"
      "zh-CN"
      "zh-TW"
      "ja"
    ];

    preferences = {
      "browser.translations.enable" = false;
    };

    policies = {
      # Updates & Background Services
      AppAutoUpdate = false;
      BackgroundAppUpdate = false;

      # Feature Disabling
      DisableFirefoxStudies = true;
      DisableFirefoxScreenshots = true;
      DisableForgetButton = true;
      DisableMasterPasswordCreation = true;
      DisableProfileImport = true;
      DisableProfileRefresh = true;
      DisableSetDesktopBackground = true;
      DisablePocket = true;
      DisableTelemetry = true;
      DisableFormHistory = true;
      DisablePasswordReveal = true;

      # Access Restrictions
      BlockAboutConfig = false;
      BlockAboutProfiles = true;
      BlockAboutSupport = true;

      # UI and Behavior
      DisplayMenuBar = "never";
      DontCheckDefaultBrowser = true;
      HardwareAcceleration = true;
      OfferToSaveLogins = false;

      SearchEngines = {
        Default = "DuckDuckGo";
        PrivateDefault = "DuckDuckGo";
      };

    };

  };
}
