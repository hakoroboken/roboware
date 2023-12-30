# ros2_rust_util

launchファイルなどで指定するパラメータを受け取ります。

## How to use
Cargo.tomlのdependenciesに以下を書き込んでください。
```toml

[dependencies]
ros2_rust_util = {git = "https://github.com/TakanoTaiga/ros2_rust_util.git"}

```


## Functions

### pub fn get_i64_parameter(node_name: &str, key: &str, defalt: i64)->i64

```rust
use ros2_rust_util::get_i64_parameter;
let param_port = get_i64_parameter("demo_node", "param_name", 1234);
```

### pub fn get_f64_parameter(node_name: &str, key: &str, defalt: f64)->f64

```rust
use ros2_rust_util::get_f64_parameter;
let param_port = get_f64_parameter("demo_node", "param_name", 12.34);
```

### pub fn get_bool_parameter(node_name: &str, key: &str, defalt: bool)->bool

```rust
use ros2_rust_util::get_bool_parameter;
let param_port = get_bool_parameter("demo_node", "param_name", false);
```

### pub fn get_str_parameter(node_name: &str, key: &str, defalt: &str) -> String

```rust
use ros2_rust_util::get_str_parameter;
let param_port = get_str_parameter("demo_node", "param_name", "str");
```
