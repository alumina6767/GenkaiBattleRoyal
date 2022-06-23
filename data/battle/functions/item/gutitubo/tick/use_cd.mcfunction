#> battle:item/gutitubo/tick/use_cd
# 使用のクールダウンの減少
# @internal

## クールダウン時間の減少
scoreboard players remove @a[scores={tori.use_cd=1..}] tori.use_cd 1

## リセット判定
scoreboard players reset @a[scores={tori.use_cd=..0}] tori.use_cd

## ループ判定
execute if entity @a[scores={tori.use_cd=1..},limit=1] run schedule function battle:item/gutitubo/tick/use_cd 1t append