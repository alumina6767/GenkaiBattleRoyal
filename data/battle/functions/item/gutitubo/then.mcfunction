#> battle:item/gutitubo/then
# アイテムの使用
# @within battle:item/gutitubo/if

#>
# @within battle:item/gutitubo/**
    #declare tag battle.gutitubo
    #declare tag battle.gutitubo.body

## ぐちつぼを召喚
execute anchored eyes run summon armor_stand ^ ^ ^2 {Invisible:1b,Marker:1b,Tags:["battle.gutitubo","new"]}
execute anchored eyes run summon armor_stand ^ ^ ^2 {Invisible:1b,Invulnerable:1b,Glowing:1b,Tags:["battle.gutitubo.body","new"],ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:670031}}]}

## 召喚主の方に顔を向けさせる
execute anchored eyes run tp @e[type=armor_stand,tag=new] ^ ^ ^2 facing entity @s eyes

## チームIDを取得
scoreboard players operation _ battle.team = @s battle.team

## 召喚主情報を取得
scoreboard players operation _ uuid3 = @s uuid3

## 実行主をぐちつぼに
execute as @e[type=armor_stand,tag=new,distance=..5] at @s run function battle:item/gutitubo/then2

## ぐちつぼのところをforceload
#forceload add ~ ~

## 音
playsound minecraft:entity.chicken.egg player @a ~ ~ ~ 1.0 1.0 0.0
playsound minecraft:entity.illusioner.prepare_blindness neutral @a ~ ~ ~ 1.0 1.0 0.0
playsound minecraft:entity.illusioner.prepare_blindness neutral @a ~ ~ ~ 1.0 2.0 0.0

## パーティクル
particle dust 0.333 0.812 0.188 2 ^ ^ ^0.5 1 1 1 1 100 force
execute rotated 0 90 run function battle:item/gutitubo/tick/particle2

## アイテムを消費
function share:remove_mainhand

## アイテム使用のクールダウンの設定
scoreboard players set @s tori.use_cd 4
schedule function battle:item/gutitubo/tick/use_cd 1t append

## スコアボードを削除
scoreboard players reset _ battle.team

## tickを開始
schedule function battle:item/gutitubo/tick/ 1t append
