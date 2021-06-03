{pkgs ? import <nixpkgs> {
  config = {
    packageOverrides = pkgs: {
      sbt = pkgs.sbt.override { jre = pkgs.openjdk11; };
    };
  };
}} :
pkgs.mkShell {
  buildInputs = [
    pkgs.sbt
    pkgs.openjdk14
    pkgs.gradle_5

    # keep this line if you use bash
    pkgs.bashInteractive
  ];
}
