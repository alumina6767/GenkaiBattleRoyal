#> battle:item/gutitubo/then
# アイテムの使用
# @within battle:item/gutitubo/if

#>
# @within battle:item/gutitubo/**
    #declare tag battle.gutitubo
    #declare tag battle.gutitubo.body

## ぐちつぼを召喚
summon armor_stand ~ ~ ~ {Tags:["battle.gutitubo","new"]}
summon armor_stand ~ ~ ~ {Tags:["battle.gutitubo.body","new"],ArmorItems:[{},{},{},{id:"minecraft:cactus",Count:1b,tag:{display:{Name:'{"text":"sup"}'}}}]}

## 召喚主の方に顔を向けさせる
tp @e[type=armor_stand,tag=new] ^ ^ ^1 facing entity @s eyes

## チームIDを取得
scoreboard players operation _ battle.team = @s battle.team

## 実行主をぐちつぼに
execute as @e[type=armor_stand,tag=new] at @s run function battle:item/gutitubo/then2

## ぐちつぼのところをforceload
#forceload add ~ ~

## アイテムを消費
function share:remove_mainhand

## スコアボードを削除
scoreboard players reset _ battle.team

## tickを開始
schedule function battle:item/gutitubo/tick/ 1t append
