#!/bin/bash

# Build a PICO-8 cartridge for the integration tests.
# This is essentially a proxy script for pico-boots/scripts/build_cartridge.sh with the right parameters.

# Usage: build_itest.sh cartridge_suffix
# See data/cartridges.txt for the list of cartridge names

# Configuration: paths
picoboots_scripts_path="$(dirname "$0")/pico-boots/scripts"
game_src_path="$(dirname "$0")/src"
data_path="$(dirname "$0")/data"
build_dir_path="$(dirname "$0")/build"

# Configuration: cartridge
version=`cat "$data_path/version.txt"`
author="leyn"
title="pico sonic itests (all) v$version"
cartridge_stem="picosonic_itest_all"
config='itest'
# symbols='assert,log,visual_logger,tuner,profiler,mouse,itest'
# cheat needed to set debug motion mode
# symbols='assert,log,itest,cheat'
# attempt to reduce char count (working at 64000 chars for now)
# symbols='log,itest,cheat'
# symbols='itest,dump'
# symbols='log,itest'
symbols='itest,proto,tostring'

cartridge_suffix="$1"; shift

# Define build output folder from config
# (to simplify cartridge loading, cartridge files are always named the same,
#  so we can only distinguish builds by their folder names)
build_output_path="${build_dir_path}/v${version}_${config}"

# Build from itest main for all itests
# metadata doesn't really matter for tests, we pass it anyway
"$picoboots_scripts_path/build_cartridge.sh"               \
  "$game_src_path" itest_main_${cartridge_suffix}.lua      \
  itests/${cartridge_suffix}                               \
  -d "$data_path/builtin_data_${cartridge_suffix}.p8"      \
  -M "$data_path/metadata.p8"                              \
  -a "$author" -t "$title"                                 \
  -p "$build_output_path"                                  \
  -o "${cartridge_stem}_${cartridge_suffix}_v${version}"   \
  -c "$config"                                             \
  -s "$symbols"                                            \
  --minify-level 3
