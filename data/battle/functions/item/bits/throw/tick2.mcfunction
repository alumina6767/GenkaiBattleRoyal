#> battle:item/bits/throw/tick2
# 爆発判定
# @internal

## 近くにfireballがないと爆発判定
execute as @e[type=area_effect_cloud,tag=bits] at @s unless entity @e[type=fireball,tag=bits,dy=-1] run function battle:item/bits/throw/explosion

## 重力の処理
execute as @e[type=fireball,tag=bits,scores={tmp=1..}] at @s run function battle:item/bits/throw/gravity

## ループ
execute if entity @e[type=area_effect_cloud,tag=bits] run schedule function battle:item/bits/throw/tick2 1t append