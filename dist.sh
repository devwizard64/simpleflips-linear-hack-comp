#!/bin/sh
set -e
cp -f "readme.txt" "build/READ THIS BEFORE ASKING ME WHY MY ROM DOESNT WORK ON YOUR SHITTY EMULATOR.txt"
cd "build"
rm -f "mario.7z"
rm -f "mario.zip"
7z a "mario.7z" "mario.z64" *.txt > "/dev/null"
zip "mario.zip" "mario.z64" *.txt > "/dev/null"
