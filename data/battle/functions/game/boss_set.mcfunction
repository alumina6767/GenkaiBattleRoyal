#> battle:game/boss_set
# 看板を右クリックし、ボスを決める
# @internal

## 古い防具立てを消す
kill @e[type=armor_stand,dy=1]

## 防具立てを召喚
summon armor_stand ~ ~-0.5 ~ {Tags:["target"],NoGravity:1b,Invisible:1b}

## プレイヤーの方を向かせる
tp @e[type=armor_stand,dy=1,tag=target] ~ ~-0.9 ~ facing entity @s

## プレイヤーヘッドを防具立てに付ける
loot replace entity @e[type=armor_stand,tag=target,dy=1,limit=1] armor.head loot share:player_head

## タグを削除
tag @e[type=armor_stand,dy=1,tag=target] remove target