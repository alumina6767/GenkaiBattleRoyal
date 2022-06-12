#> battle:item/gutitubo/summon/tori1
# tori1を召喚する
# @within battle:item/gutitubo/**

#>
# @internal
    #declare tag battle.tori1

## tori1
#summon slime ~ 1000 ~ {NoGravity:1b,Invulnerable:1b,CustomNameVisible:0b,Size:0,Silent:1b,Motion:[0.0,0.0,0.0],Tags:["new","tori1"],CustomName:'{"text":"tori1"}',NoAI:1b}
#summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Motion:[0.0,0.0,0.0],Tags:["new","tori1","tori"],Passengers:[{id:"minecraft:slime",NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:0b,NoAI:1b,Size:0,Motion:[0.0,0.0,0.0],Tags:["new","tori1","tori"],CustomName:'{"text":"tori1"}'},{id:"minecraft:slime",NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:0b,NoAI:0b,Size:0,Motion:[0.0,0.0,0.0],Tags:["new","tori1","tori"],CustomName:'{"text":"tori1"}',ActiveEffects:[{Id:14b,Amplifier:0b,Duration:10000}]}]}
#summon armor_stand 0 1000 0 {CustomNameVisible:0b,Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["new","battle.tori1","battle.tori"],Passengers:[{id:"minecraft:slime",NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:0b,NoAI:1b,Size:0,Tags:["new","battle.tori1","battle.tori"],CustomName:'{"text":"tori1"}'},{id:"minecraft:slime",NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:0b,NoAI:0b,Size:0,Tags:["new","battle.tori1","battle.tori"],CustomName:'{"text":"とり１"}',ActiveEffects:[{Id:14b,Amplifier:0b,Duration:10000,ShowParticles:0b}],Attributes:[{Name:"generic.attack_damage",Base:0.001}]}]}
summon area_effect_cloud 0 1000 0 {Duration:10000,CustomNameVisible:0b,Silent:1b,Invulnerable:1b,Tags:["new","battle.tori1","battle.tori"],Passengers:[{id:"minecraft:slime",NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:0b,NoAI:1b,Size:0,Tags:["new","battle.tori1","battle.tori"],CustomName:'{"text":"tori1"}'},{id:"minecraft:slime",NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:0b,NoAI:0b,Size:0,Tags:["new","battle.tori1","battle.tori"],CustomName:'{"text":"とり１"}',ActiveEffects:[{Id:14b,Amplifier:0b,Duration:10000,ShowParticles:0b}],Attributes:[{Name:"generic.attack_damage",Base:0.001}]}]}
#summon slime ~ ~ ~ {CustomNameVisible:0b,Size:3,Motion:[0.0,0.0,0.0],Tags:["new","tori1"],Passengers:[{id:"minecraft:armor_stand"}],CustomName:'{"text":"tori1"}'}
#summon slime ~ ~ ~ {CustomNameVisible:0b,Size:3,Motion:[0.0,0.0,0.0],Tags:["new","tori1"],Passengers:[{id:"minecraft:slime",CustomNameVisible:0b,Size:3,Motion:[0.0,0.0,0.0],CustomName:'{"text":"tori1"}'}],CustomName:'{"text":"tori1"}'}
#summon armor_stand ~ ~ ~ {CustomNameVisible:0b,Motion:[0.0,0.0,0.0],Tags:["new","tori1"],Passengers:[{id:"minecraft:slime",CustomNameVisible:0b,Tags:["tori1","new"],Size:3,Motion:[0.0,0.0,0.0],CustomName:'{"text":"tori1"}'}],CustomName:'{"text":"tori1"}'}

## 向きを指定
tp @e[type=area_effect_cloud,tag=new] ~ ~ ~ facing entity @s eyes
execute as @e[type=slime,tag=new] run data modify entity @s Rotation[0] set from entity @e[type=armor_stand,tag=new,limit=1] Rotation[0]
execute as @e[type=slime,tag=new] run data merge entity @s {Air:-2}

## ぐちつぼのチームIDを代入
scoreboard players operation @e[type=slime,tag=new] battle.team = @s battle.team

## チームに入れる
execute as @e[type=slime,tag=new] run function battle:id2team

## 残存時間
scoreboard players set @e[type=area_effect_cloud,tag=new] battle 100
scoreboard players set @e[type=slime,tag=new] battle 100

## 進行方向の設定
# execute anchored eyes facing entity @s eyes positioned 0.0 0.0 0.0 positioned ^ ^ ^0.8 run function share:get_pos

## 固有のスコアに代入
# scoreboard players operation @e[type=slime,tag=new] mx = x _
# scoreboard players operation @e[type=slime,tag=new] my = y _
# scoreboard players operation @e[type=slime,tag=new] mz = z _

## Rotationの保存
# execute store result score @e[type=slime,tag=new] yaw run data get entity @e[type=slime,tag=new,limit=1] Rotation[0] 100.0
# execute store result score @e[type=slime,tag=new] pitch run data get entity @e[type=slime,tag=new,limit=1] Rotation[1] 100.0

## タグの削除
tag @e[type=area_effect_cloud,tag=new] remove new
tag @e[type=slime,tag=new] remove new