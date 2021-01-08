#!/bin/bash

# Export and patch cartridge releases, then update existing archives with patched executables
# Also apply small tweaks to make release work completely:
# - rename HTML file to index.html to make it playable directly in browser (esp. on itch.io)
# - (TODO) add '.png' to every occurrence of '.p8' in copy of game source before exporting to PNG
# Make sure to first build full game in release

# Configuration: paths
picoboots_scripts_path="$(dirname "$0")/pico-boots/scripts"
game_scripts_path="$(dirname "$0")"
data_path="$(dirname "$0")/data"
# Linux only
carts_dirpath="$HOME/.lexaloffle/pico-8/carts"

# Configuration: cartridge
version=`cat "$data_path/version.txt"`
export_folder="$carts_dirpath/picosonic/v${version}_release"
cartridge_basename="picosonic_v${version}_release"
rel_png_folder="${cartridge_basename}_png_cartridges"
rel_bin_folder="${cartridge_basename}.bin"
rel_web_folder="${cartridge_basename}_web"

# Cleanup png folder as PICO-8 will prompt before overwriting an existing cartridge with the same name,
# and we cannot reply "y" to prompt in headless script
rm -rf "${export_folder}/${rel_png_folder}"

# Cleanup bin folder as a bug in PICO-8 makes it accumulate files in .zip for each export (even homonymous files!)
# and we want to remove any extraneous files too
rm -rf "${export_folder}/${rel_bin_folder}"

# Export via PICO-8 editor: PNG cartridges, binaries, HTML
pico8 -x "$game_scripts_path/export_game_release.p8"

# Patch the runtime binaries in-place with 4x_token, fast_reload, fast_load (experimental) if available
bin_folder="${export_folder}/${rel_bin_folder}"
patch_bin_cmd="\"$picoboots_scripts_path/patch_pico8_runtime.sh\" --inplace \"$bin_folder\" \"$cartridge_basename\""
echo "> $patch_bin_cmd"
bash -c "$patch_bin_cmd"

# Rename HTML file to index.html for direct play-in-browser
html_filepath="${export_folder}/${rel_web_folder}/${cartridge_basename}.html"
mv "$html_filepath" "${export_folder}/${rel_web_folder}/index.html"

# Patch the HTML export in-place with 4x_token, fast_reload
js_filepath="${export_folder}/${rel_web_folder}/${cartridge_basename}.js"
patch_js_cmd="python3.6 \"$picoboots_scripts_path/patch_pico8_js.py\" \"$js_filepath\" \"$js_filepath\""
echo "> $patch_js_cmd"
bash -c "$patch_js_cmd"

pushd "${export_folder}"

  # PNG cartridges archive (delete existing one to be safe)
  rm -f "${cartridge_basename}_png_cartridges.zip"
  zip -r "${cartridge_basename}_png_cartridges.zip" "$rel_png_folder"

  # HTML archive (delete existing one to be safe)
  rm -f "${cartridge_basename}_web.zip"
  zip -r "${cartridge_basename}_web.zip" "${cartridge_basename}_web"

  # Bin archives
  pushd "${rel_bin_folder}"

    # Linux archive

    # Rename linux folder with full game name so our archive contains a self-explanatory folder as the initial archive
    mv "linux" "${cartridge_basename}_linux"

    # To minimize operations, do not recreate the archive, just replace the executable in the archive generated by PICO-8 export
    # with the patched executable. We still get some warnings about "Local Version Needed To Extract does not match CD"
    # on other files, so make the operation quiet (-q)
    zip -q "${cartridge_basename}_linux.zip" "${cartridge_basename}_linux/${cartridge_basename}"


    # OSX archive

    # Replace the executable in the archive generated by PICO-8 export with the patched executable
    zip -q "${cartridge_basename}_osx.zip" "${cartridge_basename}.app/Contents/MacOS/${cartridge_basename}"


    # Windows archive

    # Rename linux folder with full game name so our archive contains a self-explanatory folder as the initial archive
    mv "windows" "${cartridge_basename}_windows"

    # To minimize operations, do not recreate the archive, just replace the executable in the archive generated by PICO-8 export
    # with the patched executable. We still get some warnings about "Local Version Needed To Extract does not match CD"
    # on other files, so make the operation quiet (-q)
    zip -q "${cartridge_basename}_windows.zip" "${cartridge_basename}_windows/${cartridge_basename}.exe"

  popd

popd
