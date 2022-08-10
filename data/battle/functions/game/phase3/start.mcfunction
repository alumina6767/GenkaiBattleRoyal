#> battle:game/phase3/start
# ゲーム中の処理
# @internal

## ゲームフェーズをゲーム中に変更
scoreboard players set battle.game.phase battle 3

## 制限時間の開始
execute if score 制限時間 battle.setting matches -2147483648..2147483647 run function battle:game/phase3/timer_start

## キルポイントリセット
scoreboard players reset * battle.kill_point
scoreboard players set @a battle.kill_point 0