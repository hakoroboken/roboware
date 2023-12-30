# ekf_rust_util
imuから自己位置推定するExtended Kalman Filterを扱うライブラリです
## How to use
Cargo.tomlに以下を記述する
```toml
[dependencies]
ekf_rust_util = {git = "https://github.com/roboware-org/ekf_rust_util.git"}
```

## Posture functions
**angular_vel**は角速度で**linear_accel**は加速度です
### intialize 
```rust
let mut posture_x = ekf_rust_util::posture::est_init();
let mut posture_p = ekf_rust_util::posture::p_init(dt);
```

### Get noise from delta time
```rust
let posture_q = ekf_rust_util::posture::est_noise(dt);
let posture_r = ekf_rust_util::posture::obs_noise(dt);
```

### Predict posture
```rust
posture_x = ekf_rust_util::posture::predict_est(posture_x, angular_vel, dt);
posture_p = ekf_rust_util::posture::predict_p(posture_p, posture_x, angular_vel, posture_q);
```

### Get Kalman gain
```rust
let kalman_gain = ekf_rust_util::posture::get_kalman_gain(posture_p, posture_r);
```

### correct and update posture
```rust
posture_x = ekf_rust_util::posture::update_est(posture_x, kalman_gain, linear_accel);
posture_p = ekf_rust_util::posture::update_p(posture_p, kalman_gain);
```

### Get quaternion from euler angles
オイラー角を用いて導出しています。よってgeometry_msgs/msg/Poseで出力するためにクォータニオンに変換するfunctionです。
```rust
let quaternion_from_euler_angles = ekf_rust_util::posture::quaternion_from_euler_angles(posture_x);
```

## Pose functions
### initialize
```rust
let mut predict_pose = ekf_rust_util::pose::init_poses();
let mut predict_pose_noise = ekf_rust_util::pose::init_cov();
```

### Get observatison
```rust
let z = ekf_rust_util::pose::observation(predict_pose, dt);
```

### Predict pose
```rust
predict_pose = ekf_rust_util::pose::predict_true(predict_pose, linear_accel, dt);
predict_pose_noise = ekf_rust_util::pose::predict_noise(predict_pose_noise, dt);
```

### Optimazation kalman gain
```rust
let kalman_gain = ekf_rust_util::pose::opt_kalman_gain(predict_pose_noise, dt);
```

### Correct and update
```rust
predict_pose = ekf_rust_util::pose::correction_est(predict_pose, kalman_gain, z);
predict_pose_noise = ekf_rust_util::pose::correction_noise(predict_pose_noise, kalman_gain);
```

## example
[こちら](https://github.com/motii8128/ekf_example)がexampleです