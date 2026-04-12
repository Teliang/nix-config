{ pkgs, ... }:
{
  programs.git = {
    enable = true;
    settings.user = {
        name  = "teliang";
        email = "telianghung@outlook.com";
    };
    settings.credential.helper = "libsecret";
  };
}
