#> battle:item/gutitubo/tick/tori4
# 固有スコアからmotionを代入
# @within battle:item/gutitubo/**

## サイズの変更
execute if entity @s[scores={battle=70..}] run function battle:item/gutitubo/tick/sizeup
execute if entity @s[scores={battle=..30}] run function battle:item/gutitubo/tick/sizedown

## パーティクル
particle dust 0.918 0.918 0.918 4 ^ ^3.0 ^-2.0 2 2 2 1.0 10 force