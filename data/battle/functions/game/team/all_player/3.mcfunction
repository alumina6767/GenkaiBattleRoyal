#> battle:game/team/all_player/3
# チームに振り分ける
# @internal

## チームの設定
scoreboard players operation @s battle.team = now_team _

## チームのインクリメント
scoreboard players operation now_team _ %= チーム数 battle.setting
scoreboard players add now_team _ 1