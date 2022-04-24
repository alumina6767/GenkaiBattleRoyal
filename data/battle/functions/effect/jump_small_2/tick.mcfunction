#> battle:effect/jump_small_2/tick
# スライムジャンプ
# @internal

#>
# @within battle:effect/jump_small_2/**
    #declare tag jpad_s2.ec
# @internal
    #declare tag jpad_s2

## スライムを消す
execute as @e[type=slime,tag=jpad_s2,tag=new] at @s run tp ~ -500 ~
tag @e[type=slime,tag=new] remove new

## 浮遊を若干遅らせて消す
execute as @a[tag=jpad_s2.ec] run function battle:effect/jump_small_2/effect_clear
execute as @a[tag=jpad_s2] run function battle:effect/jump_small_2/jumpped

## ジャンプし始めに浮遊エフェクト
execute as @a[gamemode=!spectator] at @s run function battle:effect/jump_small_2/check_pad
#execute at @e[type=falling_block,tag=jpad_s2] positioned ~ ~1.1 ~ as @a[tag=!jpad_s2,dy=-1,distance=..0.8] at @s run function battle:effect/jump_small_2/jump
