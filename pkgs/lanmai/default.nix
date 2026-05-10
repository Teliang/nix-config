{
  pkgs ? import <nixpkgs> {},
  fetchFromGitHub,
}:
pkgs.stdenv.mkDerivation {
  pname = "lanmai";
  version = "1.0.0";

  src = fetchFromGitHub {
    owner = "teliang";
    repo = "lanmai";
    rev = "43710e6363f9ce276290c8c5472ef9971149faeb";
    sha256 = "sha256-O1MOQTA/m3j8u3AYh02CkcPDTWM0SH3kLzklxrFFuMg=";
  };

  nativeBuildInputs = [
    pkgs.cmake
    pkgs.pkg-config
  ];

  buildInputs = [
    # dependencies
    pkgs.libevdev
    pkgs.udev
  ];

  installPhase = ''
    runHook preInstall
    mkdir -p $out/bin
    cp lanmai $out/bin

    install -Dm644 ../etc/lanmai.service $out/etc/systemd/system/lanmai.service
    substituteInPlace $out/etc/systemd/system/lanmai.service --replace-fail
    /usr/bin/lanmai $out/bin/lanmai

    runHook postInstall
  '';

  # postInstall = ''
  #   mkdir -p $out/lib/systemd/system
  #   substitute ../etc/lanmai.service $out/lib/systemd/system/lanmai.service \
  #   --replace /usr $out
  # '';
}
