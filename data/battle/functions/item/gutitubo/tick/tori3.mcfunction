#> battle:item/gutitubo/tick/tori3
# 固有スコアからmotionを代入
# @within battle:item/gutitubo/**

## サイズの変更
execute if entity @s[scores={battle=70..}] run function battle:item/gutitubo/tick/sizeup
execute if entity @s[scores={battle=..30}] run function battle:item/gutitubo/tick/sizedown

## パーティクル
particle dust 0.1 0.824 1 4 ^ ^3.0 ^-2.0 2 2 2 1.0 5 force
particle dust 0.875 0.976 1 4 ^ ^3.0 ^-2.0 2 2 2 1.0 5 force