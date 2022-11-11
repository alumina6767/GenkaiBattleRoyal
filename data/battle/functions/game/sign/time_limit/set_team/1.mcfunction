#> battle:game/sign/time_limit/set_team/1
# チームを割り振る
# @within battle:game/sign/game_mode/change

#>
# @within battle:game/sign/time_limit/set_team/**
    #declare score_holder player_no プレイヤーの人数

## 通知
tellraw @a [{"selector":"@s","color": "gray"},{"text": "がチームをリセットしました。"}]

## チームをリセット
team remove 11
team remove 12
team remove 13
team remove 14
team remove 15
team remove 16
team remove 17
team remove 18
team remove 19
team remove 20
team remove 21
team remove 22
team remove 23
team remove 24
team remove 25
team remove 26
team remove 27
team remove 28
team remove 29
team remove 30
team remove 31
team remove 32
team remove 33
team remove 34
team remove 35
team remove 36
team remove 37
team remove 38
team remove 39
team remove 40
team remove 41
team remove 42
team remove 43
team remove 44
team remove 45
team remove 46
team remove 47
team remove 48
team remove 49
team remove 50
team remove 51
team remove 52
team remove 53
team remove 54
team remove 55
team remove 56
team remove 57
team remove 58
team remove 59
team remove 60

## チームを追加
team add 11
team add 12
team add 13
team add 14
team add 15
team add 16
team add 17
team add 18
team add 19
team add 20
team add 21
team add 22
team add 23
team add 24
team add 25
team add 26
team add 27
team add 28
team add 29
team add 30
team add 31
team add 32
team add 33
team add 34
team add 35
team add 36
team add 37
team add 38
team add 39
team add 40
team add 41
team add 42
team add 43
team add 44
team add 45
team add 46
team add 47
team add 48
team add 49
team add 50
team add 51
team add 52
team add 53
team add 54
team add 55
team add 56
team add 57
team add 58
team add 59
team add 60

## チームをリセット
scoreboard players reset * battle.team
team leave @a

## プレイヤーのIndex
scoreboard players set player_no _ 10

## チームを割り振る
execute as @a run function battle:game/sign/time_limit/set_team/2

## スコアリセット
scoreboard players reset player_no _
