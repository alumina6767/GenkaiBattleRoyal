#> battle:item/hummer2/dash
# 突進攻撃
# @internal

execute as @a[scores={hummer2.dash=1..}] at @s run function battle:item/hummer2/dash2

execute as @e[type=armor_stand,tag=hummer2.dummy] at @s run function battle:item/hummer2/dash3

execute if entity @a[scores={hummer2.dash=1..},limit=1] run schedule function battle:item/hummer2/dash 1t append