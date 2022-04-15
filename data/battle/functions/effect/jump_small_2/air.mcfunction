#> battle:effect/jump_small_2/air
# 空中にいるとき
# @internal

## 浮遊を消す
execute as @s[tag=jump_pad_small2] unless entity @e[type=falling_block,tag=jump_pad_small2,dy=-1] run effect clear @s levitation
execute as @s[tag=jump_pad_small2] unless entity @e[type=falling_block,tag=jump_pad_small2,dy=-1] run tag @s remove jump_pad_small2

## ジャンプし始めに浮遊エフェクト
execute positioned ~ ~-1.1 ~ if entity @e[type=falling_block,tag=jump_pad_small2,dy=1,distance=..0.8] run tag @s add jump_pad_small2
#execute if entity @e[type=falling_block,tag=jump_pad_small2,dy=-1] run effect give @s levitation 1 80 true
execute as @s[tag=jump_pad_small2] run effect give @s levitation 1 80 true

## 音
execute as @s[tag=jump_pad_small2] at @s run playsound entity.goat.screaming.death player @a ~ ~ ~ 1.0 1.5 0.0
execute as @s[tag=jump_pad_small2] at @s run playsound entity.firework_rocket.launch player @a ~ ~ ~ 1.0 1.0 0.0
execute as @s[tag=jump_pad_small2] at @s run playsound entity.firework_rocket.launch player @a ~ ~ ~ 1.0 0.5 0.0

## 速度を初期化
#tp @s[tag=jump_pad_small2] ~ ~0.01 ~ ~ ~1

## スライム
#execute if entity @e[type=falling_block,tag=jump_pad_small2,dy=-1] positioned ~ ~-0.2 ~ rotated ~ 0 run function battle:effect/jump_small_2/jump_pad_small_2.hover
execute as @s[tag=jump_pad_small2] positioned ~ ~-0.2 ~ rotated ~ 0 run function battle:effect/jump_small_2/hover

tag @s[tag=!jump_pad_small2.air] add jump_pad_small2.air
