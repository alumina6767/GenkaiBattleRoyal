#> battle:item/jump_pad_small_2/
# ジャンプパッド
# @internal

## メインハンドとオフハンドをスワップ
function share:swap_main_off

# summon marker ~ ~ ~ {UUID:[I;6,7,0,7]}

# data modify storage tmp tmp set from entity @s Motion
# execute store result score mx tmp run data get storage tmp tmp[0] 100
# execute store result score my tmp run data get storage tmp tmp[1] 100
# execute store result score mz tmp run data get storage tmp tmp[2] 100

# data modify storage tmp tmp set from entity @s Pos
# execute store result score x tmp run data get storage tmp tmp[0] 100
# execute store result score y tmp run data get storage tmp tmp[1] 100
# execute store result score z tmp run data get storage tmp tmp[2] 100

# scoreboard players operation x tmp += mx tmp
# scoreboard players operation y tmp += my tmp
# scoreboard players operation z tmp += mz tmp

# execute store result storage tmp tmp[0] double 0.01 run scoreboard players get x tmp
# execute store result storage tmp tmp[1] double 0.01 run scoreboard players get y tmp
# execute store result storage tmp tmp[2] double 0.01 run scoreboard players get z tmp

# data modify entity 00000006-0000-0007-0000-000000000007 Pos set from storage tmp tmp

## ジャンプパッド
execute rotated ~ ~ positioned ^ ^ ^1 run summon falling_block ~ ~-0.3 ~ {BlockState:{Name:"minecraft:slime_block"},NoGravity:1b,Time:-300,DropItem:false,Tags:["new","jump_pad_small2"]}

# execute positioned as 00000006-0000-0007-0000-000000000007 run summon falling_block ~ ~-0.8 ~ {BlockState:{Name:"minecraft:slime_block"},NoGravity:1b,Time:-300,DropItem:false,Tags:["new","jump_pad_small2"]}

# kill 00000006-0000-0007-0000-000000000007

#execute rotated ~ 0 positioned ^ ^ ^1 run summon shulker ~ ~-0.8 ~ {Invulnerable:1b,NoGravity:1b,DeathTime:19,DeathLootTable:"minecraft:empty",NoAI:1b,Color:5b,Tags:["new","jump_pad_small2"]}

## 動きを殺す
#tp ~ ~ ~

#execute rotated ~ 0 positioned ^ ^ ^1 run summon area_effect_cloud ~ ~-1.0 ~ {NoGravity:1b,Radius:0f,Duration:600,Color:0,Tags:["jump_pad_small2"],Passengers:[{id:"minecraft:shulker",NoGravity:1b,Invulnerable:1b, CustomName:'{"text":"Grumm"}' ,DeathTime:19,DeathLootTable:"minecraft:empty",NoAI:1b,AttachFace:0b,Color:5b,Tags:["new","jump_pad_small2"]}]}

## 最新
# execute rotated ~ 0 positioned ^ ^ ^ run summon area_effect_cloud ~ ~-1.0 ~ {Radius:0f,Duration:600,Tags:["jump_pad_small2"],Passengers:[{id:"minecraft:shulker",NoGravity:1b,Invulnerable:1b,DeathTime:19,DeathLootTable:"minecraft:empty",NoAI:1b,AttachFace:0b,Color:5b,Tags:["new","jump_pad_small2"]}]}

## 消滅までの時間を設定
scoreboard players set @e[tag=new] battle 600

## 音
function battle:item/jump_pad_small_2/sound

## パーティクル
execute at @e[tag=new] run particle end_rod ~ ~1 ~ 1 1 1 0.01 30 normal

## タグを消す
tag @e[tag=new] remove new

## 進捗をリセット
advancement revoke @s only battle:item/jump_pad