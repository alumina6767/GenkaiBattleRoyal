#> battle:item/pyoniper2/reload/tick2
# tick
# @internal

## 残リロード時間の減少
scoreboard players remove @s pyoniper2.reload 1

## リロード終了を判定
execute if entity @s[scores={pyoniper2.reload=0}] at @s run function battle:item/pyoniper2/reload/end
