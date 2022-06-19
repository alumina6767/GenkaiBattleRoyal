#> battle:item/gutitubo/load
# load
# @internal

## toriのダメージを連続で食らうのを防ぐ
scoreboard objectives add cool_down.tori_damage dummy

## アイテム使用のクールダウン
scoreboard objectives add tori.use_cd dummy