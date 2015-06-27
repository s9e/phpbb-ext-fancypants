#!/bin/bash

tmpdir="/tmp"
rootdir="$(realpath $(dirname $(dirname $0)))"
cd "$rootdir"

rm -rf "$tmpdir/s9e"
mkdir -p "$tmpdir/s9e/fancypants/config"

files="
	LICENSE
	README.md
	composer.json
	config/services.yml
	listener.php
";
for file in $files;
do
	cp "$file" "$tmpdir/s9e/fancypants/$file"
done

cd "$tmpdir"
rm -f "$tmpdir/fancypants.zip"
kzip -r -y "$tmpdir/fancypants.zip" s9e
advzip -z4 "$tmpdir/fancypants.zip"

rm -rf "$tmpdir/s9e"