#> battle:item/bits/throw/tick
# クールダウン用のtick
# @internal

#>
# @private
    #declare tag kill

## クールダウン
scoreboard players remove @a[scores={cool_down.bits=1..}] cool_down.bits 1
scoreboard players reset @a[scores={cool_down.bits=0}]

execute if entity @a[scores={cool_down.bits=1..}] run schedule function battle:item/bits/throw/tick 1t append