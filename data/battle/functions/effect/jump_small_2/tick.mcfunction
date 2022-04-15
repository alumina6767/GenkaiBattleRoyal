#> battle:effect/jump_small_2/tick
# スライムジャンプ
# @internal

#>
# @within battle:effect/jump_small_2/**
    #declare tag jump_pad_small2.air
    #declare tag jump_pad_small2.hover
# @internal
    #declare tag jump_pad_small2

tag @e[type=slime,tag=new] remove new

## 空中にいるとき
#execute as @a[nbt={OnGround:0b}] at @s run function battle:effect/jump/jump_pad_small_2.air
execute as @a at @s run function battle:effect/jump_small_2/air

tag @a[tag=jump_pad_small2.air,nbt={OnGround: 1b}] remove jump_pad_small2.air

execute as @e[type=slime,tag=jump_pad_small2.hover,tag=!new] at @s run tp ~ -200 ~
#kill @e[type=slime,tag=jump_pad_small_2.hover,tag=!new]

## 古いPADを消す
scoreboard players remove @e[type=shulker,tag=jump_pad_small2] battle 1
kill @e[type=shulker,tag=jump_pad_small2,scores={battle=..0}]