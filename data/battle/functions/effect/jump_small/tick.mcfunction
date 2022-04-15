#> battle:effect/jump_small/tick
# スライムジャンプ
# @internal

#>
# @within battle:effect/jump_small/**
    #declare tag air
    #declare tag hover
# @internal
    #declare tag jump_pad_small

tag @e[type=slime,tag=new] remove new

## 空中にいるとき
#execute as @a[nbt={OnGround:0b}] at @s run function battle:effect/jump/air
execute as @a at @s run function battle:effect/jump_small/air

tag @a[tag=air,nbt={OnGround: 1b}] remove air

execute as @e[type=slime,tag=hover,tag=!new] at @s run tp ~ -200 ~
#kill @e[type=slime,tag=hover,tag=!new]

## 古いPADを消す
scoreboard players remove @e[type=falling_block,tag=jump_pad_small] battle 1
kill @e[type=falling_block,scores={battle=..0}]