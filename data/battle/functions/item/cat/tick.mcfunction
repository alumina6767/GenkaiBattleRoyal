#> battle:item/cat/tick
# 猫のtick処理
# @within battle:item/cat/**

## 実行主を制限
execute as @e[type=cat,tag=battle.cat] at @s run function battle:item/cat/tick2

## ループ
execute if entity @e[type=cat,tag=battle.cat,limit=1] run schedule function battle:item/cat/tick 1t append
