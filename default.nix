#{pkgs? (import <nixpkgs> {}).pkgs}:
#{pkgs? (import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/nixos-23.05.tar.gz") {}).pkgs}:
{pkgs? (import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/3c15feef7770eb5500a4b8792623e2d6f598c9c1.tar.gz") {}).pkgs}:
with pkgs;
buildGoModule {
  pname = "matic-telemetry";
  version = "0.1";
  vendorHash = "sha256-EvSCYLahncYmQU55EOjzeKCemG8wnAuH5hJO3mAcmFc=";
  src = ./.;
}
