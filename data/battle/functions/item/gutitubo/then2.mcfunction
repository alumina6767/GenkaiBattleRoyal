#> battle:item/gutitubo/then2
# 
# @within battle:item/gutitubo/then

## 動作タイマーを設定
scoreboard players set @s battle -60

## チームIDを付与
scoreboard players operation @s battle.team = _ battle.team
execute store result score @s uuid3 run data get entity @s UUID[3] 1

## チームへ入れる
function battle:id2team

## タグを消去
tag @s remove new
