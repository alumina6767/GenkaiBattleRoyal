#> battle:item/paint/tick_paint
# tick
# @internal

## 実行主を変更
execute as @e[type=armor_stand,tag=paint.bullet] at @s run function battle:item/paint/tick_paint2

## ループ判定
execute if entity @e[type=armor_stand,tag=paint.bullet,limit=1] run schedule function battle:item/paint/tick_paint 1t append