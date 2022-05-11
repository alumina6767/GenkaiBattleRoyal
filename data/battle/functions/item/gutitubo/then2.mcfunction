#> battle:item/gutitubo/then2
# 
# @within battle:item/gutitubo/then

## 動作タイマーを設定
scoreboard players set @s battle 0

## ぐちつぼのところをforceload
forceload add ~ ~

## チームIDを付与
scoreboard players operation @s battle.team = _ battle.team
execute store result score @s uuid3 run data get entity @s UUID[3] 1

## タグを消去
tag @s remove new

## tickを開始
schedule function battle:item/gutitubo/tick/ 1t
