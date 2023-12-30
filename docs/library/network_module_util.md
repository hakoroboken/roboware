# network_module_util

## How to use
Cargo.tomlのdependenciesに以下を書き込んでください。
```toml

[dependencies]
network_module_util = {git = "https://github.com/roboware-org/network_module_util.git"}

```

## Functions

### pub fn get_ip() -> Vec<u8>
ライブラリを実行しているPCのIPアドレスを取得します。複数のNICやipv6の環境では期待した動作をしない可能性があることに留意してください。

```rust
use network_module_util::net;

println!("port: {:?}" , net::get_ip());
```

### pub fn serialize<T: Sized>(obj: &T, buf: &mut [u8])
引数を[u8]にシリアライズします。

### pub fn deserialize<T: Sized>(buf: &[u8]) -> T
[u8]型を任意の型にデシアライズします。


```rust
use network_module_util::data;

#[cfg(kani)]
struct Vec3 {
    pub x: i16,
    pub y: i16,
    pub z: i16,
}


#[cfg(kani)]
#[kani::proof]
fn check_correctness(){
    let mut serialized_vec = Vec3 {
        x: kani::any(),
        y: kani::any(),
        z: kani::any(),
    };

    let mut buf= [0; 128];
    data::serialize(&serialized_vec, &mut buf);
    let deserialized_vec: Vec3 = data::deserialize(&buf);

    assert!(serialized_vec.x == deserialized_vec.x);
    assert!(serialized_vec.y == deserialized_vec.y);
    assert!(serialized_vec.z == deserialized_vec.z);
}

```

### network_module_util::key
通信用のenumがあります。
```rust
pub enum NodeConnectionKey {
    SearchApp,
    PingRequest,
    SearchAppResponse,
    PingResponse,
    DataValue,
    UnknownKey,
}
```

NodeConnectionKeyには`impl Display`の他に以下が実装されています。

```rust
fn convert_to_u8key(&self)->u8;
```

```rust
fn convert_to_enumkey(&self) -> NodeConnectionKey;
```