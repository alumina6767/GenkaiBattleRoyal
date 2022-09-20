#> battle:game/phase4/get_kill_rank
# キルランキングを取得
# @internal

#>
# @within battle:game/phase4/**
    #declare score_holder max_kill_point 一番killポイントの高いプレイヤー
    #declare score_holder kill_point キルポイント
    #declare score_holder rank ランク

## 最大値を取得
scoreboard players set max_kill_point _ -100
scoreboard players operation max_kill_point _ > @a battle.kill_point

## ランキング用のループ
scoreboard players operation kill_point _ = max_kill_point _
scoreboard players set rank _ 1
function battle:game/phase4/get_kill_rank_loop