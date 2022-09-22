#> battle:item/cat/summon
# 猫を召喚
# @within battle:item/cat/**

## 音 todo
## パーティクル todo

## 猫を上空に召喚
summon cat ~ ~50 ~ {Invulnerable:1b,DeathLootTable:"minecraft:empty",Tags:["battle.cat","new"],ActiveEffects:[{Id:2,Amplifier:127b,Duration:10000,ShowParticles:0b}]}

## 猫をこっちに向ける
execute rotated ~180 ~ run tp @e[type=cat,tag=new] ~ ~50 ~ ~ ~

### 向いてる方を保存
execute as @e[type=cat,tag=new,limit=1] store result score @s yaw run data get entity @s Rotation[0]
execute as @e[type=cat,tag=new,limit=1] store result score @s pitch run data get entity @s Rotation[1]

## OnGround修正
data merge entity @e[type=cat,tag=new,limit=1] {OnGround:0b}

## タグを削除
tag @e[type=cat,tag=new] remove new

## tick処理を開始
schedule function battle:item/cat/tick 1t append

## アイテムを消費 todo