#> battle:item/umeneri/tame
# たらこをてなづける
# @internal

#> 
# @internal
    #declare tag tamed

## タグ付け
tag @e[type=silverfish,tag=tarako,tag=!tamed,sort=nearest,limit=1] add target

## てなづけられているタグを追加
tag @e[type=silverfish,tag=target] add tamed

## メッセージ
function battle:message/title_reset
title @s subtitle "たらこを召喚した!!"

## チームに入れる
scoreboard players operation @e[type=silverfish,tag=target] battle.team = @s battle.team
execute as @e[type=silverfish,tag=target] run function battle:id2team

## 召喚主を保存
scoreboard players operation @e[type=silverfish,tag=target] uuid3 = @s uuid3

## スコアを付与
scoreboard players set @e[type=silverfish,tag=tarako,tag=target] battle -1

## タグを消去
tag @e[type=silverfish,tag=tarako,tag=target] remove target

## 進捗をリセット
advancement revoke @s only battle:item/umeneri/tame_tarako

## tickを起動
schedule function battle:item/umeneri/tick/ 1t append
