# ソースからのインストール

## 必要条件

- OS

  - Ubuntu 22.04

- Git

```bash
sudo apt-get -y update
sudo apt-get -y install git
```

## 開発環境のセットアップ方法

1. `roboware-org/roboware`をクローンし、ディレクトリに移動します。

   ```bash
   git clone https://github.com/roboware-org/roboware.git -b main --single-branch
   cd roboware
   ```

2. Robowareを初めてインストールする場合は、提供されたAnsibleスクリプトを使用して依存関係を自動的にインストールすることができます。

   ```bash
   ./setup-dev-env.sh
   ```


## ワークスペースのセットアップ方法

1. `src`ディレクトリを作成し、リポジトリをその中にクローンします。

   Robowareは、ワークスペースを構築するために[vcstool](https://github.com/dirk-thomas/vcstool)を使用します。

   ```bash
   cd roboware
   mkdir src
   vcs import src < roboware.repos
   ```

2. 依存するROSパッケージをインストールします。

   Robowareは、コアコンポーネントに加えていくつかのROS 2パッケージを必要とします。
   ツール`rosdep`を使用すると、このような依存関係の自動検索とインストールが可能です。
   `rosdep install`の前に`rosdep update`を実行する必要があるかもしれません。

   ```bash
   source /opt/ros/humble/setup.bash
   rosdep install -y --from-paths src --ignore-src --rosdistro $ROS_DISTRO
   ```

3. ワークスペースをビルドします。

   Robowareは、ワークスペースをビルドするために[colcon](https://github.com/colcon)を使用します。
   より詳細なオプションについては、[ドキュメント](https://colcon.readthedocs.io/)を参照してください。

   ```bash
   colcon build --symlink-install --cmake-args -DCMAKE_BUILD_TYPE=Release --cargo-args --release
   ```
