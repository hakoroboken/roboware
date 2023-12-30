# manual_mode_common

## Package URL

repo url: [roboware-org/manual_mode_common](https://github.com/roboware-org/manual_mode_common)


## Quickstart
1. launch

```bash
ros2 launch roboware_launch scgw.xml
```

## パラメータに関する注意
パラメータはstring型を受け取りますが特定の文字列以外は起動段階でノードがクラッシュします。
#### get_button

| Parameter Name        | 対応するremote_control_msgs/Gamepad    |
|-------------|---------|
| x  | remote_control_msgs.button.x  | 
| y  | remote_control_msgs.button.y  | 
| a  | remote_control_msgs.button.a  | 
| b  | remote_control_msgs.button.b  | 
| up  | remote_control_msgs.dpad.up  | 
| down  | remote_control_msgs.dpad.down  | 
| left  | remote_control_msgs.dpad.left  | 
| right  | remote_control_msgs.dpad.right  | 
| trigger.left  | remote_control_msgs.left_trigger.button  | 
| trigger.right  | remote_control_msgs.right_trigger.button  | 
| joystic.left  | remote_control_msgs.left_joystic  | 
| joystic.right  | remote_control_msgs.right_joystic  | 
| shoulder.left  | remote_control_msgs.left_shoulder_button  | 
| shoulder.right  | remote_control_msgs.right_shoulder_button  | 

#### x_name, y_name, get_value

| Parameter Name        | 対応するremote_control_msgs/Gamepad    |
|-------------|---------|
| dpad  | remote_control_msgs.dpad  | 
| trigger.left  | remote_control_msgs.left_trigger.value  | 
| trigger.right  | remote_control_msgs.right_trigger.value  | 
| x.joystic.left  | remote_control_msgs.left_joystic.x  | 
| x.joystic.right  | remote_control_msgs.right_joystic.x  | 
| y.joystic.left  | remote_control_msgs.left_joystic.y  | 
| y.joystic.right  | remote_control_msgs.right_joystic.y  | 

## lock_arm
ros2 pkg executables

#### Parameters

| Name        | Type    |
|-------------|---------|
| get_button  | string  | 
| reversal    | string  |


#### Topics

| Name | Type | Description |
|--|--|--|
| /manual_input | remote_control_msgs/Gamepad | コントローラなどのデータ |
| /lock_arm | actuator_control_msgs/LockArm | アクチュエータ駆動メッセージ |

## mecanum_wheel
ros2 pkg executables

#### Parameters

| Name        | Type    |
|-------------|---------|
| x_name  | string  | 
| y_name    | string  |
| rotation_name    | string  |



#### Topics

| Name | Type | Description |
|--|--|--|
| /manual_input | remote_control_msgs/Gamepad | コントローラなどのデータ |
| /mecanum_wheel | actuator_control_msgs/MecanumWheel | アクチュエータ駆動メッセージ |

## single_axis
ros2 pkg executables

#### Parameters

| Name        | Type    |
|-------------|---------|
| get_value  | string  | 
| reversal    | string  |


#### Topics

| Name | Type | Description |
|--|--|--|
| /manual_input | remote_control_msgs/Gamepad | コントローラなどのデータ |
| /single_axis | actuator_control_msgs/SingleAxis | アクチュエータ駆動メッセージ |

## single_axis_rotation
ros2 pkg executables

#### Parameters

| Name        | Type    |
|-------------|---------|
| get_value  | string  | 
| reversal    | string  |


#### Topics

| Name | Type | Description |
|--|--|--|
| /manual_input | remote_control_msgs/Gamepad | コントローラなどのデータ |
| /single_axis_rotation | actuator_control_msgs/SingleAxisRotation | アクチュエータ駆動メッセージ |