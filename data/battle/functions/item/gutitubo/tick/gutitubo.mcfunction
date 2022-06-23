#> battle:item/gutitubo/tick/gutitubo
# as gutitubo
# @within battle:item/gutitubo/tick/

## tori1
execute if entity @s[scores={battle=0}] positioned ~50 ~ ~50 run function battle:item/gutitubo/summon/tori1

## tori2
execute if entity @s[scores={battle=30}] positioned ~50 ~ ~-50 run function battle:item/gutitubo/summon/tori2

## tori3
execute if entity @s[scores={battle=60}] positioned ~ ~ ~100 run function battle:item/gutitubo/summon/tori3

## tori4
execute if entity @s[scores={battle=90}] positioned ~-100 ~ ~ run function battle:item/gutitubo/summon/tori4

## toriに吹き飛ばされる
scoreboard players reset _ _
execute positioned ~-0.1 ~-0.1 ~-0.1 as @e[type=slime,tag=battle.tori,dx=0] positioned ~-0.2 ~-0.2 ~-0.2 if entity @s[dx=0] run scoreboard players set _ _ 1
execute if score _ _ matches 1 as @e[type=armor_stand,tag=battle.gutitubo.body,dy=200] at @s run function battle:item/gutitubo/tick/gutitubo_hit_slime

scoreboard players add @s battle 1

## アイテム処理の終了
execute if entity @s[scores={battle=250}] run function battle:item/gutitubo/tick/gutitubo_end