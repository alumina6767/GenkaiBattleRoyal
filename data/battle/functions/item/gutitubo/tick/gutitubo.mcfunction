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

scoreboard players add @s battle 1

## アイテム処理の終了
kill @s[scores={battle=250}]