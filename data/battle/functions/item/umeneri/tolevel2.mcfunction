#> battle:item/umeneri/tolevel2
# level2にレベルアップ
# @internal

## メッセージ
execute as @a[tag=target] run function battle:title_reset
title @a[tag=target] subtitle "たらこがレベル2に進化した!!"

## パーティクル
particle happy_villager ~ ~1 ~ 0.4 0.2 0.4 1.0 10 normal
particle dust 0.247 0.898 0.757 1.5 ~ ~1 ~ 0.4 0.2 0.4 0.0001 20 normal

## 音
playsound entity.puffer_fish.blow_up player @a ~ ~ ~ 10.0 2.0 0.0
playsound minecraft:entity.piglin.jealous player @a ~ ~ ~ 5.0 2.0 0.0

## レベル上書き
tag @s remove level1
tag @s add level2