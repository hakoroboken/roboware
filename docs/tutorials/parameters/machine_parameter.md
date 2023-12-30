# Machine Parameters
機構用のパラメータです。
two_buttonノードを動かす。パラメータを複数用意しています。

## OverView
**iris.param.yaml**も**caterpiller.param.yaml**も**arm.param.yaml**も内容に違いはなく
それぞれ違うボタンで扱うために分けてあります。
```yaml
/**:
  ros__parameters:
    posi_button: shoulder.right
    nega_button: trigger.right
    plus_power: 0.25
    minus_power: 0.25
```

**posi_button** : プラスのパワーに該当するボタンを指定します。

**nega_button** : マイナスのパワーに該当するボタンを指定します。

**plus_power** : プラスのパワーの割合を百分率で指定します。

**minus_power** : マイナスのパワーの割合を百分率で指定します。