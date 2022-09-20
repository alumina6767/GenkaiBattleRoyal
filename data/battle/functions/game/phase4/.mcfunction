#> battle:game/phase4/
# ゲームの終了
# @internal

## フェーズを終了時メッセージに
scoreboard players set battle.game.phase battle 4

## ボスバーの消去
bossbar remove battle.game_timer

## 終了時のタイトル
execute as @a run function battle:message/title_reset
title @a title "おしまーい"

## 勝利者を検索
function battle:game/phase4/get_kill_rank
