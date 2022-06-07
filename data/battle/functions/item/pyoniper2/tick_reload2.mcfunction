#> battle:item/pyoniper2/tick_reload2
# tick
# @internal

## 残リロード時間の減少
scoreboard players remove @s pyoniper2.reload 1

## リロード終了を判定
scoreboard players operation _ _ = @s pyoniper2.reload
scoreboard players operation _ _ %= 100 const
execute if score _ _ matches 0 run function battle:item/pyoniper2/reload_end

## すべてのリロードが終了したらスコアのリセット
scoreboard players reset @s[scores={pyoniper2.reload=0}] pyoniper2.reload
