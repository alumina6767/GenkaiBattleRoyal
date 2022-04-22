#> battle:effect/jump_small_2/jump
# @internal

tag @s add jump_pad_small2

## 浮遊エフェクト
effect give @s levitation 1 50 true

## 音
playsound entity.goat.screaming.death player @a ~ ~ ~ 1.0 1.5 0.0
playsound entity.firework_rocket.launch player @a ~ ~ ~ 1.0 1.0 0.0
playsound entity.firework_rocket.launch player @a ~ ~ ~ 1.0 0.5 0.0

## スライム押し出し
execute positioned ~ ~0.1 ~ rotated ~ 0 run function battle:effect/jump_small_2/hover

## ジャンプのパーティクル
particle explosion ~ ~ ~ 0.1 0 0.1 1.0 3 force

## 軌跡のパーティクル
scoreboard players set @s battle.jump_pad.par 30
schedule function battle:effect/jump_small_2/particle 1t
