#> battle:item/paint/then2
# @internal

## 残存時間を設定
scoreboard players set @s paint.bullet.life 210

## チームの指定
scoreboard players operation @s battle.team = _ battle.team
function battle:id2team

## 発射主の保存
scoreboard players operation @s uuid3 = _ uuid3

## 向きの指定
tp @s ^ ^ ^0.0 ~ ~

## タグの削除
tag @s remove new
