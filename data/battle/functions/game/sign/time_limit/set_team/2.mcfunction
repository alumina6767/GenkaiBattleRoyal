#> battle:game/sign/time_limit/set_team/2
# チームを割り振る
# @within battle:game/sign/time_limit/set_team/1

## インクリメント
scoreboard players add player_no _ 1

## チームを設定
scoreboard players operation @s battle.team = player_no _
