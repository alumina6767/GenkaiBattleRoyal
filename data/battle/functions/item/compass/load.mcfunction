#> battle:item/compass/load
# リロード時に実行
# @internal

## コンパスの更新するスロット番号
scoreboard players set compass.slot battle 0
scoreboard players set slot battle 10

## プレイヤーがどのスロットにコンパスを持っているか
scoreboard objectives add battle.compass.slot dummy