## Serial Bridge
**serial_bridge_machine.params.yaml**は機構用のマイコンに送る部分で**serial_bridge_wheel.params.yaml**はその足回り用です。
```yaml
/**:
  ros__parameters:
    port : /dev/ttyACM0
    baud_late: 115200
```

**port** :　シリアルポートを指定します。

**baud_late** :　1秒間に何回データ変換できるかを指定します。