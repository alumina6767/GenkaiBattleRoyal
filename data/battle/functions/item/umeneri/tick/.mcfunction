#> battle:item/umeneri/tick/
# tick
# @internal

## スコアリセット
scoreboard players reset _ _

execute store success score _ _ as @e[type=silverfish,tag=tarako,tag=tamed] at @s run function battle:item/umeneri/tick/2

## ループ
execute if score _ _ matches 1 run schedule function battle:item/umeneri/tick/ 1t append