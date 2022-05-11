#> battle:item/gutitubo/then
# アイテムの使用
# @within battle:item/gutitubo/if

#>
# @within battle:item/gutitubo/**
    #declare tag battle.gutitubo

## ぐちつぼを召喚
summon armor_stand ~ ~ ~ {Tags:["battle.gutitubo","new"],ArmorItems:[{},{},{},{id:"minecraft:cactus",Count:1b}]}

## チームIDを取得
scoreboard players operation _ battle.team = @s battle.team

## 実行主をぐちつぼに
execute as @e[type=armor_stand,tag=new] at @s run function battle:item/gutitubo/then2

## アイテムを消費
function share:remove_mainhand

## スコアボードを削除
scoreboard players reset _ battle.team