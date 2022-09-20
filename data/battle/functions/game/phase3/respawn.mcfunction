#> battle:game/phase3/respawn
# リスポーン
# @internal

#>
# @within battle:game/phase3/**
    #declare tag battle.respawn_cd リスポーンクールダウン中

## その場でスペクテイターにする
spawnpoint @s ~ ~ ~
gamemode spectator @s

## 復活までのタイマーを設定
scoreboard players set @s battle.respawn_cd 120

## タグ付け
tag @s add battle.respawn_cd

## タイトルのリセット
function battle:message/title_reset
title @s times 0 30 30
title @s subtitle "Respawnまで.."

## タイマーの開始
schedule function battle:game/phase3/respawn_tick 1t append
