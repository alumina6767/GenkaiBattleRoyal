#> battle:item/bits/throw/then/5000
# bitsを投げる
# @internal

#>
# @within battle:item/bits/throw/**
    #declare tag 5000bits

## ベクトル計算用
execute positioned 0.0 0.0 0.0 run summon marker ^ ^ ^0.2 {UUID: [I; 6, 7, 0, 7]}

## 飛ばすファイアーボール
summon fireball ^ ^ ^2.0 {ExplosionPower:5b,Tags:["new","5000bits","bits"],Passengers:[{id:"minecraft:area_effect_cloud",Radius:0f,Duration:10000,Tags:["5000bits","bits"]}],Item:{id:"minecraft:ender_eye",tag:{CustomModelData:670002},Count:1b}}

## 重力時
execute if predicate share:is_sneak as 00000006-0000-0007-0000-000000000007 at @s run tp @s ~ ~0.4 ~
execute if predicate share:is_sneak run scoreboard players set @e[type=fireball,tag=new] tmp 60

## Motionを代入
data modify entity @e[type=fireball,tag=new,limit=1] power set from entity 00000006-0000-0007-0000-000000000007 Pos

## Ownerを代入
data modify entity @e[type=fireball,tag=new,limit=1] Owner set from entity @s UUID

## 計算用マーカーをKill
kill 00000006-0000-0007-0000-000000000007

## タグを削除
tag @e[type=fireball,tag=new] remove new

## クールダウン用スコア
scoreboard players set @s cool_down.bits 8

## アイテムを消費
item modify entity @s weapon.mainhand share:remove_count

## tick
schedule function battle:item/bits/throw/tick 1t append
schedule function battle:item/bits/throw/tick2 1t append