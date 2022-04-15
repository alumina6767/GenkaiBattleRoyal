#> battle:item/bits/throw/gravity
# 重力
# @internal

execute store result score _ _ run data get entity @s power[1] 1000
scoreboard players operation _ _ -= @s tmp
execute store result entity @s power[1] double 0.001 run scoreboard players get _ _