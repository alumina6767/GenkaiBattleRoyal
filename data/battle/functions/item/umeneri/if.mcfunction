#> battle:item/umeneri/if
# @within right_click:**

## 見ているシルバーフィッシュにもできるが、当たり判定があまりにも小さい
#execute if score @s main_hand matches 670010 if predicate battle:looking_at_tarako run function battle:item/umeneri/then
execute if score @s main_hand matches 670010 unless score @s interval.umeneri matches -1.. run function battle:item/umeneri/then
execute if score @s main_hand matches 670010 if score @s interval.umeneri matches 1.. run scoreboard players remove @s interval.umeneri 1
execute if score @s main_hand matches 670010 if score @s interval.umeneri matches 0 run scoreboard players reset @s interval.umeneri