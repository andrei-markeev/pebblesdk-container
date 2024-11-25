set -xe

PATH=/pebble/arm-cs-tools/bin:$PATH

mkdir -p /pebble/assembled
cd /pebble/assembled
mkdir -p /pebble/assembled/resources/fonts
mkdir -p /pebble/assembled/resources/images
mkdir -p /pebble/assembled/resources/data
cp -r /pebble/pebblejs/* .
cp -r /pebble/app/* .
python /pebble/sdk3/pebble/waf configure build

# TODO: generate_manifest_dict