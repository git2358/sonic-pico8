#!/bin/bash
# Run the .p8 file corresponding to the representative file
# $1: representative file base name (used to deduce the main lua script and the output path)
# $2: config ('debug' or 'release')"

# check that source and output paths have been provided
if [[ $# -lt 2 ]] ; then
    echo "run.sh takes 2 params, provided $#:
    \$1: representative file base name (used to deduce the main source file and the output path)
    \$2: config ('debug' or 'release')"
    exit 1
fi

. helper/config_helper.sh

# define build vars, here only $OUTPUT_BASENAME matters
define_build_vars $1

OUTPUT_FILEPATH="build/${OUTPUT_BASENAME}_$2.p8"

echo "Running ${OUTPUT_FILEPATH} with extra args: '${@:3}'"
# ${@:4} will pass remaining args after the first 2, such as "-x; exec bash
# as a trick to run headless and keep terminal open"
gnome-terminal -- bash -x -c "pico8 -run ${OUTPUT_FILEPATH} -gif_scale 4 ${@:3}"
