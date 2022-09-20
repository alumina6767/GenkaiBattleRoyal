#> battle:game/phase3/timer_tick
# タイマーtick
# @internal

## デクリメント
scoreboard players remove battle.game_timer battle 1

## ボスバーへ代入
execute store result bossbar battle.game_timer value run scoreboard players get battle.game_timer battle
execute if score battle.game_timer battle matches 100 run bossbar set battle.game_timer name 5
execute if score battle.game_timer battle matches 080 run bossbar set battle.game_timer name 4
execute if score battle.game_timer battle matches 060 run bossbar set battle.game_timer name 3
execute if score battle.game_timer battle matches 040 run bossbar set battle.game_timer name 2
execute if score battle.game_timer battle matches 020 run bossbar set battle.game_timer name 1
execute if score battle.game_timer battle matches 001 run bossbar set battle.game_timer name "TIME UP!!!"

## ループ判定
execute if score battle.game_timer battle matches 1.. run schedule function battle:game/phase3/timer_tick 1t append

## 終了時処理
execute if score battle.game_timer battle matches 0 run function battle:game/phase4/
