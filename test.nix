with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "my-environment";

  buildInputs = [
    pkgs.git
    pkgs.cowsay
    pkgs.figlet
    pkgs.lolcat
  ];

  shellHook = ''
    figlet "Welcome!" | lolcat --freq 0.5
  '';
}
