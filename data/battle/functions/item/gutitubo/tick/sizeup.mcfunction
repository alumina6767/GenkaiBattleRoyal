#> battle:item/gutitubo/tick/sizeup
# スライムを一段階大きくする
# @internal

execute store result score _ _ run data get entity @s Size 1
scoreboard players add _ _ 1
execute store result entity @s Size int 1 run scoreboard players get _ _