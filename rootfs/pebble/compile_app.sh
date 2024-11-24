set -xe

PATH=/pebble/arm-cs-tools/bin:$PATH

mkdir -p /pebble/build
cd /pebble/build
mkdir -p /pebble/build/resources/fonts
mkdir -p /pebble/build/resources/images
mkdir -p /pebble/build/resources/data
cp -r /pebble/pebblejs/* .
cp -r /pebble/app/* .
python /pebble/sdk3/pebble/waf configure build

# TODO: generate_manifest_dict