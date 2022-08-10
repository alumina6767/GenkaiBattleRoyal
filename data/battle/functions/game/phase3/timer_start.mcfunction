#> battle:game/phase3/timer_start
# 制限時間のスタート
# @internal

## ボスバーの追加
bossbar add battle.game_timer "制限時間"
bossbar set battle.game_timer color green 

## 値の設定
scoreboard players operation battle.game_timer battle = 制限時間 battle.setting
execute store result bossbar battle.game_timer max run scoreboard players get 制限時間 battle.setting

## 全員に見せる
bossbar set battle.game_timer visible true
bossbar set battle.game_timer players @a

## ループの開始
function battle:game/phase3/timer_tick