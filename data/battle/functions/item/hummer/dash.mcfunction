#> battle:item/hummer/dash
# 突進攻撃
# @internal

execute as @a[scores={hummer.dash=1..}] at @s run function battle:item/hummer/dash2

execute as @e[type=armor_stand,tag=hummer.dummy] at @s run function battle:item/hummer/dash3

execute if entity @a[scores={hummer.dash=1..},limit=1] run schedule function battle:item/hummer/dash 1t append