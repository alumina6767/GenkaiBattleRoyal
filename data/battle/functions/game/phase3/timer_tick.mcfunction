#> battle:game/phase3/timer_tick
# タイマーtick
# @internal

## デクリメント
scoreboard players remove battle.game_timer battle 1

## ボスバーへ代入
execute store result bossbar battle.game_timer value run scoreboard players get battle.game_timer battle

## ループ判定
execute if score battle.game_timer battle matches 1.. run schedule function battle:game/phase3/timer_tick 1t append

## 終了時処理
execute if score battle.game_timer battle matches 0 run function battle:game/phase4/
