#> battle:effect/jump_small_2/jump
# @internal

## タグ付け
tag @s add jpad_s2

## 浮遊エフェクト
effect give @s levitation 1 60 true
effect give @s speed 1 2 true

## 音
playsound entity.goat.screaming.death player @a ~ ~ ~ 1.0 1.5 0.0
playsound entity.firework_rocket.launch player @a ~ ~ ~ 1.0 1.0 0.0
playsound entity.firework_rocket.launch player @a ~ ~ ~ 1.0 0.5 0.0

## スライム押し出し
execute positioned ~ ~-0.4 ~ rotated ~ 0 run function battle:effect/jump_small_2/hover

## ジャンプのパーティクル
particle explosion ~ ~ ~ 0.1 0 0.1 1.0 3 force

## 軌跡のパーティクル
scoreboard players set @s battle.jump_pad.par 30
schedule function battle:effect/jump_small_2/particle 1t

## 負荷軽減のためpadの耐久度を減らす
execute store result score _ _ run data get entity @e[type=falling_block,tag=target,dy=-2,limit=1] Time 1
scoreboard players add _ _ 10
execute store result entity @e[type=falling_block,tag=target,dy=-2,limit=1] Time int 1 run scoreboard players get _ _

## タグを削除
tag @e[type=falling_block,tag=target,dy=-2,limit=1] remove target