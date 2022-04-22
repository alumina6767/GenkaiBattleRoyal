#> battle:effect/jump_small_2/tick
# スライムジャンプ
# @internal

#>
# @within battle:effect/jump_small_2/**
    #declare tag jump_pad_small2.hover
# @internal
    #declare tag jump_pad_small2

## スライムを消す
execute as @e[type=slime,tag=jump_pad_small2.hover,tag=!new] at @s run tp ~ -500 ~
tag @e[type=slime,tag=new] remove new

## 浮遊を消す
execute as @a[tag=jump_pad_small2] run function battle:effect/jump_small_2/jumpped

## ジャンプし始めに浮遊エフェクト
#execute as @a at @s positioned ~ ~-1.1 ~ if entity @e[type=falling_block,tag=jump_pad_small2,dy=1,distance=..0.8] positioned ~ ~1.1 ~ run function battle:effect/jump_small_2/jump
execute at @e[type=falling_block,tag=jump_pad_small2] positioned ~ ~1.1 ~ as @a[dy=-1,distance=..0.8] at @s run function battle:effect/jump_small_2/jump
