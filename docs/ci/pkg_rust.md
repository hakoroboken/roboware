# Package build test

## with safe_drive
example
```yml
name: build test
on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]


jobs:
  build_and_test:
    runs-on: ubuntu-22.04

    container:
      image: ros:humble-ros-base

    steps:
      - name: Install curl and wget
        run: apt-get update && apt-get install -y curl wget python3-pip

      - name: Install Rust and Cargo
        uses: dtolnay/rust-toolchain@stable

      - name: install ament-cargo
        uses: baptiste0928/cargo-install@v2
        with:
          crate: cargo-ament-build
          git: https://github.com/tier4/cargo-ament-build.git
          branch: main

      - name: install dep1
        run: |
          wget https://github.com/roboware-org/roboware/raw/pkg/ros-humble-actuator-control-msgs_1.0.0-0jammy_amd64.deb &&
          wget https://github.com/roboware-org/roboware/raw/pkg/ros-humble-remote-control-msgs_1.0.0-0jammy_amd64.deb &&
          apt-get install -y ./*.deb

      - name: install dep2
        run: |
          python3 -m pip install git+https://github.com/tier4/colcon-cargo.git git+https://github.com/colcon/colcon-ros-cargo.git

      - name: make workdpace
        run: |
          mkdir -p workspace/src

      - name: Check out repository
        uses: actions/checkout@v3
        with: 
          path: workspace/src/manual_mode_common

      - name: Build tests
        id: build_test
        run: |
          cd workspace/ &&
          . /opt/ros/humble/setup.sh &&
          . $HOME/.cargo/env &&
          colcon build
        shell: bash
```

## with rclcpp
example

```yml
name: build test
on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]


jobs:
  build_and_test:
    runs-on: ubuntu-22.04

    container:
      image: ros:humble-ros-base

    steps:
      - name: Install curl and wget
        run: apt-get update && apt-get install -y wget

      - name: install dep1
        run: |
          wget https://github.com/roboware-org/roboware/raw/pkg/ros-humble-mc-msgs_1.0.0-0jammy_amd64.deb &&
          wget https://github.com/roboware-org/roboware/raw/pkg/ros-humble-remote-control-msgs_1.0.0-0jammy_amd64.deb &&
          apt-get install -y ./*.deb

      - name: make workdpace
        run: |
          mkdir -p workspace/src

      - name: Check out repository
        uses: actions/checkout@v3
        with: 
          path: workspace/src/mdc_transporter

      - name: Build tests
        id: build_test
        run: |
          cd workspace/ &&
          . /opt/ros/humble/setup.sh &&
          colcon build
        shell: bash
```