#> battle:item/jump_pad_small_2/load
# リロード時に実行
# @internal

## ジャンプパッドのパーティクルを一定時間与える
scoreboard objectives add battle.jump_pad.par dummy

## アイテム使用のインターバル
scoreboard objectives add interval.jump_pad dummy