#> battle:item/champagne/trigger
# ガトリングを発射
# @internal

## シャンパンを発射中なら無視
execute if score @s champagne.bullets matches 0.. run tellraw @s "今は発射できない"

## でなければ発射
execute unless score @s champagne.bullets matches 0.. run function battle:item/champagne/shot
