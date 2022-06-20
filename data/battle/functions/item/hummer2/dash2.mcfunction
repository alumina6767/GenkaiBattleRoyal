#> battle:item/hummer2/dash2
# 突進攻撃
# @internal

## 残存時間の減少
scoreboard players remove @s hummer2.dash 1

## 終了処理
execute if entity @s[scores={hummer2.dash=0}] run function battle:item/hummer2/dash_end