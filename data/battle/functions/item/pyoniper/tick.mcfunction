#> battle:item/pyoniper/tick
# tick
# @internal

## 実行対象を制限
execute as @e[type=armor_stand,tag=pyoniper.bullet] at @s run function battle:item/pyoniper/tick2

## ループ
execute if entity @e[type=armor_stand,tag=pyoniper.bullet,limit=1] run schedule function battle:item/pyoniper/tick 1t append