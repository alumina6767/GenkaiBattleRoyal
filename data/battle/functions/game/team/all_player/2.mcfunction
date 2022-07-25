#> battle:game/team/all_player/2
# 全プレイヤーをチームに振り分ける
# @internal

#> 
# @internal
    #declare score_holder now_team 振り分けるチーム
    #declare tag battle.spectator 観戦者

## チームのリセット
team leave @a[tag=!battle.boss]

## 観戦者の設定
execute as @a[tag=!battle.boss] if block ~ ~-1 ~ netherite_block run tag @s add battle.spectator

## 振り分けるチームのindex
scoreboard players set now_team _ 1

## ボスでない観戦以外のプレイヤーを振り分け
execute as @r[tag=!battle.boss,tag=!battle.spectator,limit=200] run function battle:game/team/all_player/3

## スコアリセット
scoreboard players reset now_team

## チームに加える
execute as @a[tag=!battle.boss, tag=!battle.spectator] run function battle:id2team
