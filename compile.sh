#!/bin/bash

ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

rm $HOME/.cargo/config.toml
touch $HOME/.cargo/config.toml
rm -rf $ROOT/install/ $ROOT/log/ $ROOT/build/
find $ROOT -name 'Cargo.lock' -type f -exec rm -rf {} \;
colcon build --symlink-install --cmake-args -DCMAKE_BUILD_TYPE=Release --cargo-args --release

