#> battle:item/umeneri/tolevel4
# level4 にレベルアップ
# @internal

execute as @a[tag=target] run function battle:message/title_reset
title @a[tag=target] subtitle "たらこが最終レベルに進化した!!"

## パーティクル
particle happy_villager ~ ~1 ~ 0.4 0.2 0.4 1.0 10 normal
particle dust 0.247 0.898 0.757 1.5 ~ ~1 ~ 0.4 0.2 0.4 0.0001 20 normal

## 音
playsound entity.puffer_fish.blow_up player @a ~ ~ ~ 10.0 2.0 0.0
playsound minecraft:entity.piglin.jealous player @a ~ ~ ~ 5.0 2.0 0.0

## レベル上書き
tag @s remove level3
tag @s add level4

## 速度上昇
attribute @s generic.movement_speed modifier add 1de03603-78d7-4019-9b99-d1c19a6217eb "level4" 0.8 multiply_base