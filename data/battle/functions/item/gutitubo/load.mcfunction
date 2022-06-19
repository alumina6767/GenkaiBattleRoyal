#> battle:item/gutitubo/load
# load
# @internal

## toriのダメージを連続で食らうのを防ぐ
scoreboard objectives add tori.damage_cd dummy

## アイテム使用のクールダウン
scoreboard objectives add tori.use_cd dummy