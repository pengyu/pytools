#!/usr/bin/env bash

ver=$(Rpkgdcf.sh -v)
pkg=$(Rpkgdcf.sh -p)
cd ../
tar cjvf "$pkg"_"$ver".tar.bz2 "$pkg" --exclude='.*.sw?' --exclude=.git --exclude='*.pdf' --exclude=backup --exclude=doc --exclude='*.o' --exclude='*.so' --exclude=.DS_Store

