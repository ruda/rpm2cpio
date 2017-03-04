Extract CPIO archive from RPM package.
rpm2cpio converts the RPM on standard input or first parameter to a CPIO archive on standard output.

Quick installation:

    curl -RO https://raw.githubusercontent.com/ruda/rpm2cpio/master/rpm2cpio.py
    chmod +x rpm2cpio.py

Usage:

    $ ./rpm2cpio.py < adjtimex-1.20-2.1.i386.rpm  | cpio -it
    ./sbin/adjtimex
    ./usr/share/doc/adjtimex-1.20
    ./usr/share/doc/adjtimex-1.20/COPYING
    ./usr/share/doc/adjtimex-1.20/COPYRIGHT
    ./usr/share/doc/adjtimex-1.20/README
    ./usr/share/man/man8/adjtimex.8.gz
    133 blocks
