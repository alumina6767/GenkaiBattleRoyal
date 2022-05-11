#> battle:item/gutitubo/tick/sizedown
# スライムを一段階大きくする
# @internal

execute store result score _ _ run data get entity @s Size 1
scoreboard players remove _ _ 1
execute store result entity @s Size int 1.0 run scoreboard players get _ _