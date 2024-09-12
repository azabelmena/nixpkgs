{
  stdenv,
  fetchFromGitHub,
  bison,
  cmake,
  makeWrapper,
  ninja,
  nodejs,
  npmHooks,
  pkg-config,
  blas,
  boehmgc,
  boost,
  eigen,
  fflas-ffpack,
  flint,
  frobby, # NEEDS PACKAGE!
  gdbm,
  givaro,
  gmp,
  libffi,
  libxml2,
  mpfi,
  mpfr,
  mpsolve,
  ntl,
  readline,
  singular,
  tbb,
  texlive,
  fetchNpmDeps,
  lib,
  _4ti2,
  cohomcalg,
  csdp,
  gfan,
  nauty,
  normaliz,
  topcom, # NEEDS PACKAGE!
  which
}:

pkgs.stdenv.mkDerivation rec {
  pname = "M2";
  version = "1.23";

  src = pkgs.fetchFromGitHub {
    owner = "Macaulay2";
    repo = "M2";
    rev = "1fd238210e9a37ddaec3b700ccd22f06ff5f28f5";
    branchName = "release-${version}-branch";
    fetchSubmodules = true;
    sha256 = "1mgqsczpxjq2im1mhqny7f37xx3r0nrj7h33b2ksc7cgy6hx18w7";
  };

  meta = with pkgs.lib; {
    description = "A software system for research in algebraic geometry";
    homepage = "https://macaulay2.com/";
    license = with licenses; [ gpl3Only ];
    mainProgram = "M2";
    maintainers = with maintainers; [ alois31 ];
    sourceProvenance = with sourceTypes; [ fromSource ];
  };

}
