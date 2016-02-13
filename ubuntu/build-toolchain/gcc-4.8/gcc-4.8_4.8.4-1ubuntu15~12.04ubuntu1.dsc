-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Format: 1.0
Source: gcc-4.8
Binary: gcc-4.8-base, libgcc1, libgcc1-dbg, libgcc2, libgcc2-dbg, libgcc-4.8-dev, libgcc4, libgcc4-dbg, lib64gcc1, lib64gcc1-dbg, lib64gcc-4.8-dev, lib32gcc1, lib32gcc1-dbg, lib32gcc-4.8-dev, libhfgcc1, libhfgcc1-dbg, libhfgcc-4.8-dev, libsfgcc1, libsfgcc1-dbg, libsfgcc-4.8-dev, libn32gcc1, libn32gcc1-dbg, libn32gcc-4.8-dev, gcc-4.8, gcc-4.8-multilib, gcc-4.8-plugin-dev, gcc-4.8-hppa64, cpp-4.8, cpp-4.8-doc, gcc-4.8-locales, g++-4.8, g++-4.8-multilib, libgomp1, libgomp1-dbg, lib32gomp1, lib32gomp1-dbg, lib64gomp1, lib64gomp1-dbg, libn32gomp1, libn32gomp1-dbg, libhfgomp1, libhfgomp1-dbg, libsfgomp1, libsfgomp1-dbg, libitm1, libitm1-dbg, lib32itm1, lib32itm1-dbg, lib64itm1, lib64itm1-dbg, libn32itm1, libn32itm1-dbg, libhfitm1, libhfitm1-dbg, libsfitm1, libsfitm1-dbg, libatomic1, libatomic1-dbg, lib32atomic1, lib32atomic1-dbg, lib64atomic1, lib64atomic1-dbg, libn32atomic1, libn32atomic1-dbg, libhfatomic1, libhfatomic1-dbg, libsfatomic1, libsfatomic1-dbg, libasan0, libasan0-dbg,
 lib32asan0, lib32asan0-dbg, lib64asan0, lib64asan0-dbg, libhfasan0, libhfasan0-dbg, libsfasan0, libsfasan0-dbg, libtsan0, libtsan0-dbg, libquadmath0, libquadmath0-dbg, lib32quadmath0, lib32quadmath0-dbg, lib64quadmath0, lib64quadmath0-dbg, libn32quadmath0, libn32quadmath0-dbg, libhfquadmath0, libhfquadmath0-dbg, libsfquadmath0, libsfquadmath0-dbg, gobjc++-4.8, gobjc++-4.8-multilib, gobjc-4.8, gobjc-4.8-multilib, libobjc-4.8-dev, lib64objc-4.8-dev, lib32objc-4.8-dev, libn32objc-4.8-dev, libhfobjc-4.8-dev, libsfobjc-4.8-dev, libobjc4, libobjc4-dbg, lib64objc4, lib64objc4-dbg, lib32objc4, lib32objc4-dbg, libn32objc4, libn32objc4-dbg, libhfobjc4, libhfobjc4-dbg, libsfobjc4, libsfobjc4-dbg, gfortran-4.8, gfortran-4.8-multilib, gfortran-4.8-doc, libgfortran-4.8-dev, lib64gfortran-4.8-dev, lib32gfortran-4.8-dev, libn32gfortran-4.8-dev, libhfgfortran-4.8-dev, libsfgfortran-4.8-dev, libgfortran3, libgfortran3-dbg, lib64gfortran3, lib64gfortran3-dbg, lib32gfortran3,
 lib32gfortran3-dbg, libn32gfortran3, libn32gfortran3-dbg, libhfgfortran3, libhfgfortran3-dbg, libsfgfortran3, libsfgfortran3-dbg, gccgo-4.8, gccgo-4.8-multilib, gccgo-4.8-doc, libgo4, libgo4-dbg, lib64go4, lib64go4-dbg, lib32go4, lib32go4-dbg, libn32go4, libn32go4-dbg, gcj-4.8, gcj-4.8-jdk, gcj-4.8-jre-headless, gcj-4.8-jre, libgcj14, gcj-4.8-jre-lib, libgcj14-awt, libgcj14-dev, libgcj14-dbg, gcj-4.8-source, libgcj-doc, libstdc++6, lib32stdc++6, lib64stdc++6, libn32stdc++6, libhfstdc++6, libsfstdc++6, libstdc++-4.8-dev, libstdc++-4.8-pic, libstdc++6-4.8-dbg, lib32stdc++-4.8-dev, lib32stdc++6-4.8-dbg, lib64stdc++-4.8-dev, lib64stdc++6-4.8-dbg, libn32stdc++-4.8-dev, libn32stdc++6-4.8-dbg, libhfstdc++-4.8-dev, libhfstdc++6-4.8-dbg, libsfstdc++-4.8-dev, libsfstdc++6-4.8-dbg, libstdc++-4.8-doc, gdc-4.8, libphobos-4.8-dev, fixincludes, gcc-4.8-doc,
 gcc-4.8-source
Architecture: any all
Version: 4.8.4-1ubuntu15~12.04ubuntu1
Maintainer: Ubuntu Core developers <ubuntu-devel-discuss@lists.ubuntu.com>
Uploaders: Matthias Klose <doko@debian.org>
Homepage: http://gcc.gnu.org/
Standards-Version: 3.9.6
Vcs-Browser: http://svn.debian.org/viewsvn/gcccvs/branches/sid/gcc-4.8/
Vcs-Svn: svn://svn.debian.org/svn/gcccvs/branches/sid/gcc-4.8
Build-Depends: debhelper (>= 5.0.62), dpkg-dev (>= 1.16.0~ubuntu4), g++-multilib [amd64 armel armhf i386 kfreebsd-amd64 mips mips64 mips64el mipsel mipsn32 mipsn32el powerpc ppc64 s390 s390x sparc sparc64 x32], libc6.1-dev (>= 2.13-0ubuntu6) [alpha ia64] | libc0.3-dev (>= 2.13-0ubuntu6) [hurd-i386] | libc0.1-dev (>= 2.13-0ubuntu6) [kfreebsd-i386 kfreebsd-amd64] | libc6-dev (>= 2.13-0ubuntu6), libc6-dev (>= 2.13-31) [armel armhf], libc6-dev-amd64 [i386 x32], libc6-dev-sparc64 [sparc], libc6-dev-sparc [sparc64], libc6-dev-s390 [s390x], libc6-dev-s390x [s390], libc6-dev-i386 [amd64 x32], libc6-dev-powerpc [ppc64], libc6-dev-ppc64 [powerpc], libc0.1-dev-i386 [kfreebsd-amd64], lib32gcc1 [amd64 ppc64 kfreebsd-amd64 mipsn32 mipsn32el mips64 mips64el s390x sparc64 x32], libn32gcc1 [mips mipsel mips64 mips64el], lib64gcc1 [i386 mips mipsel mipsn32 mipsn32el powerpc sparc s390 x32], libc6-dev-mips64 [mips mipsel mipsn32 mipsn32el], libc6-dev-mipsn32 [mips mipsel mips64 mips64el], libc6-dev-mips32 [mipsn32 mipsn32el mips64 mips64el], libc6-dev-armhf [armel], libhfgcc1 [armel], libc6-dev-armel [armhf], libsfgcc1 [armhf], libc6.1-dbg [alpha ia64] | libc0.3-dbg [hurd-i386] | libc0.1-dbg [kfreebsd-i386 kfreebsd-amd64] | libc6-dbg, kfreebsd-kernel-headers (>= 0.84) [kfreebsd-any], m4, libtool, autoconf2.64, libunwind7-dev (>= 0.98.5-6) [ia64], libatomic-ops-dev [ia64], gawk, lzma, xz-utils, patchutils, zlib1g-dev, binutils (>= 2.22) | binutils-multiarch (>= 2.22), binutils-hppa64 (>= 2.22) [hppa], gperf (>= 3.0.1), bison (>= 1:2.3), flex, gettext, texinfo (>= 4.3), locales, sharutils, procps, libantlr-java, python, libffi-dev, fastjar, libmagic-dev, libecj-java (>= 3.3.0-2), zip, libasound2-dev [!hurd-any !kfreebsd-any], libxtst-dev, libxt-dev, libgtk2.0-dev (>= 2.4.4-2), libart-2.0-dev, libcairo2-dev, g++-4.8 [armel armhf], netbase, libcloog-isl-dev (>= 0.18), libmpc-dev, libmpfr-dev (>= 3.0.0-9~), libgmp-dev (>= 2:5.0.1~), dejagnu [!m68k !hurd-amd64 !hurd-i386 !hurd-alpha !kfreebsd-amd64 !kfreebsd-i386 !kfreebsd-alpha], autogen, realpath (>= 1.9.12), chrpath, lsb-release, quilt
Build-Depends-Indep: doxygen (>= 1.7.2), graphviz (>= 2.2), ghostscript, texlive-latex-base, xsltproc, libxml2-utils, docbook-xsl-ns
Package-List: 
 cpp-4.8 deb interpreters optional
 cpp-4.8-doc deb doc optional
 fixincludes deb devel optional
 g++-4.8 deb devel optional
 g++-4.8-multilib deb devel optional
 gcc-4.8 deb devel optional
 gcc-4.8-base deb libs required
 gcc-4.8-doc deb doc optional
 gcc-4.8-hppa64 deb devel optional
 gcc-4.8-locales deb devel optional
 gcc-4.8-multilib deb devel optional
 gcc-4.8-plugin-dev deb devel optional
 gcc-4.8-source deb devel optional
 gccgo-4.8 deb devel optional
 gccgo-4.8-doc deb doc optional
 gccgo-4.8-multilib deb devel optional
 gcj-4.8 deb java optional
 gcj-4.8-jdk deb java optional
 gcj-4.8-jre deb java optional
 gcj-4.8-jre-headless deb java optional
 gcj-4.8-jre-lib deb java optional
 gcj-4.8-source deb java optional
 gdc-4.8 deb devel optional
 gfortran-4.8 deb devel optional
 gfortran-4.8-doc deb doc optional
 gfortran-4.8-multilib deb devel optional
 gobjc++-4.8 deb devel optional
 gobjc++-4.8-multilib deb devel optional
 gobjc-4.8 deb devel optional
 gobjc-4.8-multilib deb devel optional
 lib32asan0 deb libs optional
 lib32asan0-dbg deb debug extra
 lib32atomic1 deb libs optional
 lib32atomic1-dbg deb debug extra
 lib32gcc-4.8-dev deb libdevel optional
 lib32gcc1 deb libs extra
 lib32gcc1-dbg deb debug extra
 lib32gfortran-4.8-dev deb libdevel optional
 lib32gfortran3 deb libs optional
 lib32gfortran3-dbg deb debug extra
 lib32go4 deb libs optional
 lib32go4-dbg deb debug extra
 lib32gomp1 deb libs optional
 lib32gomp1-dbg deb debug extra
 lib32itm1 deb libs optional
 lib32itm1-dbg deb debug extra
 lib32objc-4.8-dev deb libdevel optional
 lib32objc4 deb libs optional
 lib32objc4-dbg deb debug extra
 lib32quadmath0 deb libs optional
 lib32quadmath0-dbg deb debug extra
 lib32stdc++-4.8-dev deb libdevel optional
 lib32stdc++6 deb libs extra
 lib32stdc++6-4.8-dbg deb debug extra
 lib64asan0 deb libs optional
 lib64asan0-dbg deb debug extra
 lib64atomic1 deb libs optional
 lib64atomic1-dbg deb debug extra
 lib64gcc-4.8-dev deb libdevel optional
 lib64gcc1 deb libs optional
 lib64gcc1-dbg deb debug extra
 lib64gfortran-4.8-dev deb libdevel optional
 lib64gfortran3 deb libs optional
 lib64gfortran3-dbg deb debug extra
 lib64go4 deb libs optional
 lib64go4-dbg deb debug extra
 lib64gomp1 deb libs optional
 lib64gomp1-dbg deb debug extra
 lib64itm1 deb libs optional
 lib64itm1-dbg deb debug extra
 lib64objc-4.8-dev deb libdevel optional
 lib64objc4 deb libs optional
 lib64objc4-dbg deb debug extra
 lib64quadmath0 deb libs optional
 lib64quadmath0-dbg deb debug extra
 lib64stdc++-4.8-dev deb libdevel optional
 lib64stdc++6 deb libs optional
 lib64stdc++6-4.8-dbg deb debug extra
 libasan0 deb libs optional
 libasan0-dbg deb debug extra
 libatomic1 deb libs optional
 libatomic1-dbg deb debug extra
 libgcc-4.8-dev deb libdevel optional
 libgcc1 deb libs required
 libgcc1-dbg deb debug extra
 libgcc2 deb libs required
 libgcc2-dbg deb debug extra
 libgcc4 deb libs required
 libgcc4-dbg deb debug extra
 libgcj-doc deb doc optional
 libgcj14 deb libs optional
 libgcj14-awt deb libs optional
 libgcj14-dbg deb debug extra
 libgcj14-dev deb libdevel optional
 libgfortran-4.8-dev deb libdevel optional
 libgfortran3 deb libs optional
 libgfortran3-dbg deb debug extra
 libgo4 deb libs optional
 libgo4-dbg deb debug extra
 libgomp1 deb libs optional
 libgomp1-dbg deb debug extra
 libhfasan0 deb libs extra
 libhfasan0-dbg deb debug extra
 libhfatomic1 deb libs optional
 libhfatomic1-dbg deb debug extra
 libhfgcc-4.8-dev deb libdevel optional
 libhfgcc1 deb libs optional
 libhfgcc1-dbg deb debug extra
 libhfgfortran-4.8-dev deb libdevel optional
 libhfgfortran3 deb libs optional
 libhfgfortran3-dbg deb debug extra
 libhfgomp1 deb libs optional
 libhfgomp1-dbg deb debug extra
 libhfitm1 deb libs optional
 libhfitm1-dbg deb debug extra
 libhfobjc-4.8-dev deb libdevel optional
 libhfobjc4 deb libs optional
 libhfobjc4-dbg deb debug extra
 libhfquadmath0 deb libs optional
 libhfquadmath0-dbg deb debug extra
 libhfstdc++-4.8-dev deb libdevel optional
 libhfstdc++6 deb libs optional
 libhfstdc++6-4.8-dbg deb debug extra
 libitm1 deb libs optional
 libitm1-dbg deb debug extra
 libn32atomic1 deb libs optional
 libn32atomic1-dbg deb debug extra
 libn32gcc-4.8-dev deb libdevel optional
 libn32gcc1 deb libs optional
 libn32gcc1-dbg deb debug extra
 libn32gfortran-4.8-dev deb libdevel optional
 libn32gfortran3 deb libs optional
 libn32gfortran3-dbg deb debug extra
 libn32go4 deb libs optional
 libn32go4-dbg deb debug extra
 libn32gomp1 deb libs optional
 libn32gomp1-dbg deb debug extra
 libn32itm1 deb libs optional
 libn32itm1-dbg deb debug extra
 libn32objc-4.8-dev deb libdevel optional
 libn32objc4 deb libs optional
 libn32objc4-dbg deb debug extra
 libn32quadmath0 deb libs optional
 libn32quadmath0-dbg deb debug extra
 libn32stdc++-4.8-dev deb libdevel optional
 libn32stdc++6 deb libs optional
 libn32stdc++6-4.8-dbg deb debug extra
 libobjc-4.8-dev deb libdevel optional
 libobjc4 deb libs optional
 libobjc4-dbg deb debug extra
 libphobos-4.8-dev deb libdevel optional
 libquadmath0 deb libs optional
 libquadmath0-dbg deb debug extra
 libsfasan0 deb libs extra
 libsfasan0-dbg deb debug extra
 libsfatomic1 deb libs optional
 libsfatomic1-dbg deb debug extra
 libsfgcc-4.8-dev deb libdevel optional
 libsfgcc1 deb libs optional
 libsfgcc1-dbg deb debug extra
 libsfgfortran-4.8-dev deb libdevel optional
 libsfgfortran3 deb libs optional
 libsfgfortran3-dbg deb debug extra
 libsfgomp1 deb libs optional
 libsfgomp1-dbg deb debug extra
 libsfitm1 deb libs optional
 libsfitm1-dbg deb debug extra
 libsfobjc-4.8-dev deb libdevel optional
 libsfobjc4 deb libs optional
 libsfobjc4-dbg deb debug extra
 libsfquadmath0 deb libs optional
 libsfquadmath0-dbg deb debug extra
 libsfstdc++-4.8-dev deb libdevel optional
 libsfstdc++6 deb libs optional
 libsfstdc++6-4.8-dbg deb debug extra
 libstdc++-4.8-dev deb libdevel optional
 libstdc++-4.8-doc deb doc optional
 libstdc++-4.8-pic deb libdevel extra
 libstdc++6 deb libs important
 libstdc++6-4.8-dbg deb debug extra
 libtsan0 deb libs optional
 libtsan0-dbg deb debug extra
Checksums-Sha1: 
 bc68632d1d7235a1239cccdd3d749bd9523319ef 66451474 gcc-4.8_4.8.4.orig.tar.gz
 884368584a92f6d38513210d3ee128c4e3fc3b37 1073625 gcc-4.8_4.8.4-1ubuntu15~12.04ubuntu1.diff.gz
Checksums-Sha256: 
 0a714dd7a8415cb134c79784ff8b0a30da6d76afb998c21f6e95e1060d65466c 66451474 gcc-4.8_4.8.4.orig.tar.gz
 5aed8ba9f19080484917b8321555d36cf7d10091e1d88600fdc476231bd21874 1073625 gcc-4.8_4.8.4-1ubuntu15~12.04ubuntu1.diff.gz
Files: 
 414eb2d13bb1ae06c0e710f604479960 66451474 gcc-4.8_4.8.4.orig.tar.gz
 1b004201396a386bd927a10f3a18ce17 1073625 gcc-4.8_4.8.4-1ubuntu15~12.04ubuntu1.diff.gz
Original-Maintainer: Debian GCC Maintainers <debian-gcc@lists.debian.org>

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iQEcBAEBAgAGBQJWuewLAAoJEE20cJYvrev10MoH/2y63B/jQ6hTvXeyNb4w03EV
dYMUospvK82Rag8OTu0+Y2llIWm6RPpo29CuGluWl0rjGw9UquFhWrIQSK3TiS6F
vup8r4saa4DC9SMeVXGeYj6Jgsu/7bhqmhtuWNKP9qdPYNlNAl0T/9aRY4hyB7DD
2fvkH7QUKgI1k4dQjGWBbGeiHrTC/wUhX59jgBJOqyl95yzs/0jk5FnJnoufScFw
XM85Th8MNbK4Tdu98ulGh38HbSQQH+0N0mMTXeesH2p7LGamgLKbSCmcWM9vSmMV
+CseRX83bFjdWBm8zSa9pVLjFecIrYtka6YclSsiVODRIFHBrQQB7pUM7vMfd/0=
=InOP
-----END PGP SIGNATURE-----
