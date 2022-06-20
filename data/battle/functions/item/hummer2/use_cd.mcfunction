#> battle:item/hummer2/use_cd
# 使用のクールダウン
# @internal

## クールダウンの減少
scoreboard players remove @a[scores={hummer2.use_cd=1..}] hummer2.use_cd 1

## スコアのリセット
execute as @a[scores={hummer2.use_cd=..0}] at @s run function battle:item/hummer2/end_use_cd

## ループ判定
execute if entity @a[scores={hummer2.use_cd=1..},limit=1] run schedule function battle:item/hummer2/use_cd 1t append