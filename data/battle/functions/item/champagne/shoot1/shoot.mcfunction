#> battle:item/champagne/shoot1/shoot
# tp式 拡散弾
# @internal

#>
# @within battle:item/champagne/**
    #declare tag champagne.bullet_low

## 音
playsound entity.egg.throw player @a ~ ~ ~ 1.0 1.0 0.0

## 弾を召喚
summon armor_stand ~ ~ ~ {Tags:["champagne.bullet_low","new","champagne.bullet.first"],Small:1b,Marker:1b,Invisible:1b,Silent:1b}

## 射程距離を設定
scoreboard players set @e[type=armor_stand,tag=new,distance=..1] champagne.time 40

## 発射主を登録
scoreboard players operation @e[type=armor_stand,tag=new,distance=..1] uuid3 = @s uuid3

## チームを登録
scoreboard players operation @e[type=armor_stand,tag=new,distance=..1] battle.team = @s battle.team

## 向きをランダム
tp @e[type=armor_stand,tag=new,distance=..1] ^ ^ ^0.1 ~ ~
execute as @e[type=armor_stand,tag=new,distance=..1] at @s run function battle:item/champagne/shoot1/diffuse

## タグを削除
tag @e[type=armor_stand,tag=new,distance=..1] remove new