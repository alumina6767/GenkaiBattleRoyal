#> battle:item/pyoniper/reload_tick
# リロード
# @internal

## リロード時間を減少
scoreboard players remove @a[scores={pyoniper.reload=1..}] pyoniper.reload 1

## リロード終了を判定
execute as @a[scores={pyoniper.reload=0}] run function battle:item/pyoniper/reload_end

## ループ判定
execute if entity @a[scores={pyoniper.reload=1..},limit=1] run schedule function battle:item/pyoniper/reload_tick 1t append