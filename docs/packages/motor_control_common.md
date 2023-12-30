# motor_control_common

## Package URL

repo url: [roboware-org/motor_control_common](https://github.com/roboware-org/motor_control_common)


## mc_mecanum_wheel

**Subscriber**

| Name | Type | Description |
|--|--|--|
| /manual_input | actuator_control_msgs/MecanumWheel | メカナムホイールの操作命令 |

**Publisher**

| Name | Type | Description |
|--|--|--|
| /raw_motor_fl | actuator_control_msgs/RawMotor | Front Left |
| /raw_motor_fr | actuator_control_msgs/RawMotor | Front Right |
| /raw_motor_rl | actuator_control_msgs/RawMotor | Rear Left |
| /raw_motor_rr | actuator_control_msgs/RawMotor | Rear Right |

## mc_merger

**Subscriber**

| Name | Type | Description |
|--|--|--|
| /raw_motor_0 | actuator_control_msgs/RawMotor | Motor 0 |
| /raw_motor_1 | actuator_control_msgs/RawMotor | Motor 1 |
| /raw_motor_2 | actuator_control_msgs/RawMotor | Motor 2 |
| /raw_motor_3 | actuator_control_msgs/RawMotor | Motor 3 |

**Publisher**

| Name | Type | Description |
|--|--|--|
| /motor_contorl | mc_msgs/Data | モーター制御命令 |

## mc_single_axis

**Subscriber**

| Name | Type | Description |
|--|--|--|
| /input_axis | actuator_control_msgs/SingleAxis | アクチュエータ駆動命令 |

**Publisher**

| Name | Type | Description |
|--|--|--|
| /raw_motor | actuator_control_msgs/RawMotor | モーター制御命令 |


## mc_single_axis_rotation

**Subscriber**

| Name | Type | Description |
|--|--|--|
| /input_axis_rotation | actuator_control_msgs/SingleAxisRotation | アクチュエータ駆動命令 |

**Publisher**

| Name | Type | Description |
|--|--|--|
| /raw_motor | actuator_control_msgs/RawMotor | モーター制御命令 |