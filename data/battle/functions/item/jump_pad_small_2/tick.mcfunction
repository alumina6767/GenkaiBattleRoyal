#> battle:item/jump_pad_small_2/tick
# tick
# @internal

## アイテム使用インターバルの減少
scoreboard players remove @a[scores={interval.jump_pad=1..}] interval.jump_pad 1

## スコアのリセット
scoreboard players reset @a[scores={interval.jump_pad=0}] interval.jump_pad

## ループ
execute if entity @a[scores={interval.jump_pad=1..},limit=1] run schedule function battle:item/jump_pad_small_2/tick 1t append