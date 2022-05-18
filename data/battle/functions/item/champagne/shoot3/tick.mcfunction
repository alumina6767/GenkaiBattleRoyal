#> battle:item/champagne/shoot3/tick
# tick
# @internal

## 実行対象を制限
execute as @e[type=armor_stand,tag=champagne.bullet_high] at @s run function battle:item/champagne/shoot3/tick2

## ループ
execute if entity @e[type=armor_stand,tag=champagne.bullet_high,limit=1] run schedule function battle:item/champagne/shoot3/tick 1t append