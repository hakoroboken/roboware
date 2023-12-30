# Parameters
各パラメータです

## Wheel(足回り)
### a version
**wheel_a.param.yaml**です。
```yaml
/**:
  ros__parameters:
    x_name: x.joystic.left
    y_name: y.joystic.left
    rotation_name: x.joystic.right
    no_accel_power: 0.15
```
上から

**x_name** :　ｘ方向のベクトルに左スティックの横方向を割り当てる

**y_name** :　y方向のベクトルに左スティックの縦方向を割り当てる

**rotation_name** :　旋回用のスティックを右スティックの横方向に割り当てる

**no_accel_power** :　左トリガーのアクセルを押してない時のパワーを決めます。百分率だと思えば良いと思います。
つまり、**1.0**に設定するとアクセル機能がなくなり常にフルパワーで走ります。
＊注意：整数を書き込まないでください。例）3.0->**O** 3->**X**

### b version
**wheel_b.param.yaml**です。
```yaml
/**:
  ros__parameters:
    right_name: right
    left_name: left
    front_name: up
    back_name: down
    rotation_name: x.joystic.right
    move_no_accel_power: 0.5
    rotation_power: 0.5
    x_move_power : 0.5
```
上から

**right_name** :　右方向のベクトル

**left_name** :　左方向のベクトル

**front_name** :　前方向のベクトル

**back_name** :　後方向のベクトル

**rotation_name** :　旋回用のスティックを右スティックの横方向に割り当てる

**no_accel_power** :　左トリガーのアクセルを押してない時のパワーを決めます。百分率だと思えば良いと思います。
つまり、**1.0**に設定するとアクセル機能がなくなり常にフルパワーで走ります。
＊注意：整数を書き込まないでください。例）3.0->**O** 3->**X**

**rotation_power** : 旋回の速度を変更可能です

**x_move_power** : 真横への移動の速度を制御します。
