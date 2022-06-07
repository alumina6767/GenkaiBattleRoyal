#> battle:item/pyoniper2/tick_bullet
# 弾丸処理
# @internal

## 実行対象を制限
execute as @e[type=armor_stand,tag=pyoniper2.bullet] at @s run function battle:item/pyoniper2/tick_bullet2

## ループ
execute if entity @e[type=armor_stand,tag=pyoniper2.bullet,limit=1] run schedule function battle:item/pyoniper2/tick_bullet 1t append