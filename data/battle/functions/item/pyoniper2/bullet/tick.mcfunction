#> battle:item/pyoniper2/bullet/tick
# 弾丸処理
# @internal

## 実行対象を制限
execute as @e[type=armor_stand,tag=pyoniper2.bullet] at @s run function battle:item/pyoniper2/bullet/tick2

## ループ
execute if entity @e[type=armor_stand,tag=pyoniper2.bullet,limit=1] run schedule function battle:item/pyoniper2/bullet/tick 1t append