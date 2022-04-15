#> battle:effect/jump_small/air
# 空中にいるとき
# @internal

## 浮遊を消す
execute unless entity @e[type=falling_block,dx=0] run effect clear @s levitation

## ジャンプし始めに浮遊エフェクト
execute if entity @e[type=falling_block,dx=0] run effect give @s levitation 1 80 true

## スライム
execute if entity @e[type=falling_block,dx=0] positioned ~ ~-0.2 ~ rotated ~ 0 run function battle:effect/jump_small/hover

tag @s[tag=!air] add air
