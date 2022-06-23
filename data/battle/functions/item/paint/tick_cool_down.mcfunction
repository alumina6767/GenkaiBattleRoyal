#> battle:item/paint/tick_cool_down
# クールダウンの減少
# @internal

## クールダウンの減少
scoreboard players remove @a[scores={cool_down.paint=1..}] cool_down.paint 1

## スコアのリセット
scoreboard players reset @a[scores={cool_down.paint=0}] cool_down.paint

## ループ
execute if entity @a[scores={cool_down.paint=1..},limit=1] run schedule function battle:item/paint/tick_cool_down 1t append