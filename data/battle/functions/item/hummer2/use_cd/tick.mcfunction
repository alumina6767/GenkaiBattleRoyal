#> battle:item/hummer2/use_cd/tick
# 使用のクールダウン
# @internal

## 残クールダウン時間を減少
execute as @a[scores={hummer2.use_cd=1..}] run function battle:item/hummer2/use_cd/tick2

## ループ判定
execute if entity @a[scores={hummer2.use_cd=1..},limit=1] run schedule function battle:item/hummer2/use_cd/tick 1t append