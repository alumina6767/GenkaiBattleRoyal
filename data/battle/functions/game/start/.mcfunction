#> battle:game/start/
# スタートの処理
# @internal

#> 
# @within battle:game/**
    #declare score_holder start_timer スタート処理に使うタイマー

## タイミングスコア
scoreboard players set start_timer battle 0

## ボスバトルのとき
execute if score #game.mode battle.setting matches 1 run function battle:game/start/boss_battle_mode

## タイム制の時
execute if score #game.mode battle.setting matches 2 run function battle:game/start/time_mode
