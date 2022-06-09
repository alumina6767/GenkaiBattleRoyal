#> battle:item/pyoniper/reload/tick
# リロード
# @internal

## リロード時間を減少
scoreboard players remove @a[scores={pyoniper.reload=1..}] pyoniper.reload 1

## リロード終了を判定
execute as @a[scores={pyoniper.reload=0}] at @s run function battle:item/pyoniper/reload/end

## ループ判定
execute if entity @a[scores={pyoniper.reload=1..},limit=1] run schedule function battle:item/pyoniper/reload/tick 1t append