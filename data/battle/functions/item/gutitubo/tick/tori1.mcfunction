#> battle:item/gutitubo/tick/tori1
# 固有スコアからmotionを代入
# @within battle:item/gutitubo/**

## 前進
#spreadplayers ~ ~ 0 1 under 319 false @s
#execute rotated ~ 0 run tp ^ ^ ^2.0

## サイズの変更
execute if entity @s[scores={battle=70..}] run function battle:item/gutitubo/tick/sizeup
execute if entity @s[scores={battle=..30}] run function battle:item/gutitubo/tick/sizedown

## パーティクル
particle dust 0.918 0.918 0.918 4 ^ ^3.0 ^-2.0 2 2 2 1.0 10 force

## 足音
function battle:item/gutitubo/tick/step_sound

## 一旦ストレージに代入
# data modify storage tmp Motion set value [0.0,0.0,0.0]
# execute store result storage tmp Motion[0] double 0.001 run scoreboard players get @s mx
# execute store result storage tmp Motion[1] double 0.001 run scoreboard players get @s my
# execute store result storage tmp Motion[2] double 0.001 run scoreboard players get @s mz

## tori1にmotionを代入
# data modify entity @s Motion set from storage tmp Motion

## Rotationを一旦ストレージに代入
# data modify storage tmp Rotation set value [0.0f,0.0f]
# execute store result storage tmp Rotation[0] float 0.01 run scoreboard players get @s yaw
# execute store result storage tmp Rotation[1] float 0.01 run scoreboard players get @s pitch

## Rotationを代入
# data modify entity @s Rotation set from storage tmp Rotation

## AIRを変更して向きを同期
#data merge entity @s {Air:-1s}

## ストレージを削除
# data remove storage tmp Motion
# data remove storage tmp Rotation