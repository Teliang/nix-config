{config,pkgs, ...}: {
  programs.firefox = {
    policies = {
      Preferences = {
	"media.av1.enabled" = false;
      };
    };
  };
}
