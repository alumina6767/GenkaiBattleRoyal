#> battle:item/gutitubo/then2
# 
# @within battle:item/gutitubo/then

## 動作タイマーを設定
scoreboard players set @s battle -60

## チームIDを付与
scoreboard players operation @s battle.team = _ battle.team

## チームへ入れる
function battle:id2team

## 召喚主を保存
scoreboard players operation @s uuid3 = _ uuid3

## タグを消去
tag @s remove new
