#> battle:item/pyoniper2/reload/tick2
# tick
# @internal

## 残リロード時間の減少
scoreboard players remove @s pyoniper2.reload 1

## リロード状況に応じてインジゲータを変更
execute if entity @s[scores={pyoniper2.reload=299}] run function battle:item/pyoniper2/reload/0percent
execute if entity @s[scores={pyoniper2.reload=240}] run function battle:item/pyoniper2/reload/20percent
execute if entity @s[scores={pyoniper2.reload=180}] run function battle:item/pyoniper2/reload/40percent
execute if entity @s[scores={pyoniper2.reload=120}] run function battle:item/pyoniper2/reload/60percent
execute if entity @s[scores={pyoniper2.reload=60}] run function battle:item/pyoniper2/reload/80percent

## リロード終了を判定
execute if entity @s[scores={pyoniper2.reload=0}] at @s run function battle:item/pyoniper2/reload/end
