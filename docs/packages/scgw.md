# safe_smart_controller_gateway

## Package URL

repo url: [TakanoTaiga/safe_smart_controller_gateway](https://github.com/TakanoTaiga/safe_smart_controller_gateway)


## Quickstart
1. launch

```bash
ros2 launch roboware_launch scgw.xml
```

## Parameters

| Name        | Type    | Description                                                                                              |
|-------------|---------|----------------------------------------------------------------------------------------------------------|
| port   | int  | 受信ポートを指定します。デフォルト64201です。 |
| debug    | bool    | デバッグフラグです。Trueにするとあらゆるイベントが可視化されます。 |


## Topics and Services

| Name | Type | Description |
|--|--|--|
| /data_out | scgw_msgs/Data | コントローラなどデータ。idつきのbyte列 |
