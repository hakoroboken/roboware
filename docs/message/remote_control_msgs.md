# remote_control_msgs

## Gamepad
```
remote_control_msgs/msg/Joystic left_joystic
remote_control_msgs/msg/Joystic right_joystic

remote_control_msgs/msg/Trigger left_trigger
remote_control_msgs/msg/Trigger right_trigger

remote_control_msgs/msg/Dpad dpad
remote_control_msgs/msg/Button button

bool left_shoulder_button
bool right_shoulder_button
```

## Button
```
bool x
bool y
bool a
bool b
```

## Dpad
```
bool up
bool down
bool left
bool right
```

## Joystic
```
float32 x
float32 y
bool thumbstick_button
```

## SmartUI
```
bool button_a
bool button_b
float32 slider
```

## Trigger
```
float32 value
bool button
```