#> battle:item/pyoniper2/shoot/2
# 発砲 as 弾丸
# @internal

## 音
playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 1 1.5 0
playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 1 0.8 0

## 射程距離を設定
scoreboard players set @s pyoniper2.time 40

## 発射主を登録
scoreboard players operation @s uuid3 = _ uuid3

## チームを登録
scoreboard players operation @s battle.team = _ battle.team

## タグを削除
tag @s remove new

## スコアリセット
scoreboard players reset _ uuid3
scoreboard players reset _ battle.team