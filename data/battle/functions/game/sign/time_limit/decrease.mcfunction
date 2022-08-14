#> battle:game/sign/time_limit/decrease
# 制限時間を減らす
# @internal

## 制限時間を増加させる
scoreboard players remove 制限時間 battle.setting 1
scoreboard players remove #battle.game_timer.limit battle.setting 1200

## 看板に反映
execute at @e[type=item_frame,tag=battle.sign.time_limit] run data modify block ~ ~ ~ Text3 set value '[{"text":"","color":"#FF5517"},{"text": "<<< "},{"score":{"objective": "battle.setting","name": "制限時間"}},{"text": " minutes >>>"}]'

## 音
playsound ui.button.click player @a ~ ~ ~ 1 1 1

## 通知
tellraw @a [{"selector":"@s","color": "gray"},{"text": "が制限時間を "},{"score":{"objective": "battle.setting","name": "制限時間"}},{"text": "分 に変更しました"}]
