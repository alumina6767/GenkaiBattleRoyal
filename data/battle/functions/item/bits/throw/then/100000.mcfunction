#> battle:item/bits/throw/then/100000
# bitsを投げる
# @internal

#>
# @within battle:item/bits/throw/**
    #declare tag 100000bits

## ベクトル計算用
execute positioned 0.0 0.0 0.0 run summon marker ^ ^ ^0.8 {UUID: [I; 6, 7, 0, 7]}

## 飛ばすファイアーボール
summon fireball ^ ^ ^0.1 {ExplosionPower:0b,Tags:["new","100000bits","bits"],Passengers:[{id:"minecraft:area_effect_cloud",Radius:0f,Duration:10000,Tags:["100000bits","bits","new"]}],Item:{id:"minecraft:ender_eye",tag:{CustomModelData:670004},Count:1b}}

## 重力時
execute if predicate share:is_sneak as 00000006-0000-0007-0000-000000000007 at @s run tp @s ~ ~1.6 ~
execute if predicate share:is_sneak run scoreboard players set @e[type=fireball,tag=new] tmp 400

## Motionを代入
data modify entity @e[type=fireball,tag=new,limit=1] power set from entity 00000006-0000-0007-0000-000000000007 Pos

## Ownerを代入
data modify entity @e[type=fireball,tag=new,limit=1] Owner set from entity @s UUID

## uuid3を代入
scoreboard players operation @e[type=fireball,tag=new,limit=1] uuid3 = @s uuid3
scoreboard players operation @e[type=area_effect_cloud,tag=new,limit=1] uuid3 = @s uuid3

## ダメージ情報を保存
scoreboard players set @e[type=fireball,tag=new,limit=1] battle.hurt_with 670004

## 計算用マーカーをKill
kill 00000006-0000-0007-0000-000000000007

## タグを削除
tag @e[type=fireball,tag=new] remove new
tag @e[type=area_effect_cloud,tag=new] remove new

## クールダウン用スコア
scoreboard players set @s cool_down.bits 8

## アイテムを消費
function share:remove_mainhand

## tick
schedule function battle:item/bits/throw/tick 1t append
schedule function battle:item/bits/throw/tick2 1t append