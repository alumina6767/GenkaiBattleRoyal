#> battle:item/gutitubo/summon/tori3
# tori3を召喚する
# @within battle:item/gutitubo/**

#>
# @internal
    #declare tag battle.tori3

## tori3
summon area_effect_cloud 0 1000 0 {Duration:10000,CustomNameVisible:0b,Silent:1b,Invulnerable:1b,Tags:["new","battle.tori3","battle.tori"],Passengers:[{id:"minecraft:slime",NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:0b,NoAI:1b,Size:0,Tags:["new","battle.tori3","battle.tori"],CustomName:'{"text":"tori3"}'},{id:"minecraft:slime",NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:0b,NoAI:0b,Size:0,Tags:["new","battle.tori3","battle.tori"],CustomName:'{"text":"とり３"}',ActiveEffects:[{Id:14b,Amplifier:0b,Duration:10000,ShowParticles:0b}],Attributes:[{Name:"generic.attack_damage",Base:0.001}]}]}

## 向きを指定
tp @e[type=area_effect_cloud,tag=new] ~ ~ ~ facing entity @s eyes
execute as @e[type=slime,tag=new] run data modify entity @s Rotation[0] set from entity @e[type=area_effect_cloud,tag=new,limit=1] Rotation[0]
execute as @e[type=slime,tag=new] run data merge entity @s {Air:-2}

## ぐちつぼのチームIDを代入
scoreboard players operation @e[type=slime,tag=new] battle.team = @s battle.team

## チームに入れる
execute as @e[type=slime,tag=new] run function battle:id2team

## 残存時間
scoreboard players set @e[type=area_effect_cloud,tag=new] battle 100
scoreboard players set @e[type=slime,tag=new] battle 100

## タグの削除
tag @e[type=area_effect_cloud,tag=new] remove new
tag @e[type=slime,tag=new] remove new