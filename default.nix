{ pkgs ? import (fetchTarball channel:nixos-18.09) { } }:
let
  inherit (pkgs) stdenv bundlerEnv ruby;
  name = "mvp-nix-http-binary-cache";
in

let
  env = bundlerEnv {
    inherit name ruby;
    gemdir = ./.;
  };
in
stdenv.mkDerivation rec {
  inherit name;
  buildInputs = [
    env
    env.wrappedRuby
  ];
  src = ./.;
  installPhase = ''
    mkdir -p $out/libexec
    cp app.rb $out/libexec/${name}
    chmod +x $out/libexec/*
  '';
}
