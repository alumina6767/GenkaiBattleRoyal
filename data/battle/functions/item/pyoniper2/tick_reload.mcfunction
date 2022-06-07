#> battle:item/pyoniper2/tick_reload
# リロード
# @internal

## 残リロード時間を減少
execute as @a[scores={pyoniper2.reload=1..}] run function battle:item/pyoniper2/tick_reload2

## ループ判定
execute if entity @a[scores={pyoniper2.reload=1..},limit=1] run schedule function battle:item/pyoniper2/tick_reload 1t append