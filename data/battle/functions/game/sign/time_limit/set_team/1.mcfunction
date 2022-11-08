#> battle:game/sign/time_limit/set_team/1
# チームを割り振る
# @within battle:game/sign/game_mode/change

#>
# @within battle:game/sign/time_limit/set_team/**
    #declare score_holder player_no プレイヤーの人数

## チームをリセット
scoreboard players reset * battle.team
team leave @a

## プレイヤーのIndex
scoreboard players set player_no _ 10

## チームを割り振る
execute as @a run function battle:game/sign/time_limit/set_team/2

## スコアリセット
scoreboard players reset player_no _
