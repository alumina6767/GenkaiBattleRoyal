#> battle:item/hummer2/damage_cd
# ダメージのクールダウン
# @internal

## クールダウンの減少
scoreboard players remove @a[scores={hummer2.damage_cd=1..}] hummer2.damage_cd 1

## スコアのリセット
scoreboard players reset @a[scores={hummer2.damage_cd=..0}] hummer2.damage_cd

## ループ
execute if entity @a[scores={hummer2.damage_cd=1..},limit=1] run schedule function battle:item/hummer2/damage_cd 1t append
