#!/bin/bash
name=counsel-bbdb
version=0.0.3
pkg=$name-$version
mkdir $pkg
cp *.el $pkg
cat << EOF > $pkg/$name-pkg.el
(define-package "$name" "$version" "Quick search&input email from BBDB based on ivy")
EOF
if [[ `uname -s` == *Darwin* ]]; then
   COPYFILE_DISABLE="" tar cvf $pkg.tar $pkg/
else
   tar cvf $pkg.tar $pkg/
fi
rm -rf $pkg/
