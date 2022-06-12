#> battle:item/gutitubo/tick/3
# tick as slime
# @internal

## タイマー減少
scoreboard players remove @s battle 1

## サイズの変更
execute as @s[tag=battle.tori1] run function battle:item/gutitubo/tick/tori1
execute as @s[tag=battle.tori2] run function battle:item/gutitubo/tick/tori2
execute as @s[tag=battle.tori3] run function battle:item/gutitubo/tick/tori3
execute as @s[tag=battle.tori4] run function battle:item/gutitubo/tick/tori4

## 向きの修正
data modify entity @s Rotation set from entity @e[type=area_effect_cloud,tag=battle.tori,sort=nearest,limit=1] Rotation
data merge entity @s {Air:-1}


## 消去
tp @s[scores={battle=..0}] ~ -200 ~