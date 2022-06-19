#> battle:item/gutitubo/tick/tori2
# 固有スコアからmotionを代入
# @within battle:item/gutitubo/**

## サイズの変更
execute if entity @s[scores={battle=70..}] run function battle:item/gutitubo/tick/sizeup
execute if entity @s[scores={battle=..30}] run function battle:item/gutitubo/tick/sizedown

## パーティクル
particle dust 1.0 0.604 0.322 4 ^ ^3.0 ^-2.0 2 2 2 1.0 5 force
particle dust 1 0.322 0.322 4 ^ ^3.0 ^-2.0 2 2 2 1.0 5 force
particle flame ^ ^3.0 ^-2.0 2 2 2 0.01 10 force

## 足音
function battle:item/gutitubo/tick/step_sound
