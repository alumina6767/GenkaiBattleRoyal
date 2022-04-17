#> battle:item/bits/throw/tick
# クールダウン用のtick
# @internal

## クールダウン
scoreboard players remove @a[scores={cool_down.bits=1..}] cool_down.bits 1
scoreboard players reset @a[scores={cool_down.bits=0}] cool_down.bits

execute if entity @a[scores={cool_down.bits=1..}] run schedule function battle:item/bits/throw/tick 1t append