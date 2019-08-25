#!/bin/bash
set -e
TIME=$(python tools/fmt_time.py "build %y%m%d %I%M%p")

echo "assembling raw ROM..."
tools/armips -strequ BUILD_STR "$TIME" -sym build/mario_dev.sym main.asm
wine tools/n64crc.exe build/mario_dev.z64 > /dev/null

echo "extracting data..."
python tools/binextract.py

set -x
tools/mio0 c "data/level_title/seg07/data.bin"    "data/level_title/seg07/data.mio0"
tools/mio0 c "data/level_title/seg80/data.bin"    "data/level_title/seg80/data.mio0"
tools/mio0 c "data/level_hub/seg07/data.bin"      "data/level_hub/seg07/data.mio0"
tools/mio0 c "data/level_rickroll/seg07/data.bin" "data/level_rickroll/seg07/data.mio0"
tools/mio0 c "data/level_main/seg07/data.bin"     "data/level_main/seg07/data.mio0"
tools/mio0 c "data/level_main/seg0A/data.bin"     "data/level_main/seg0A/data.mio0"
tools/mio0 c "data/level_kuppa/seg07/data.bin"    "data/level_kuppa/seg07/data.mio0"
tools/mio0 c "data/star_bg/seg0A/data.bin"        "data/star_bg/seg0A/data.mio0"
set +x

echo "assembling MIO0 ROM..."
tools/armips -strequ BUILD_STR "$TIME" -sym build/mario.sym -definelabel MIO0_ROM 1 main.asm
wine tools/n64crc.exe build/mario.z64 > /dev/null

echo "================================    SUCCESS     ================================"
