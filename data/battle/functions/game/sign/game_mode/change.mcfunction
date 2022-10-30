#> battle:game/sign/game_mode/change
# ゲームモードを変更する
# @internal

#>
# @private
    #declare score_holder 2 定数2

## ゲームモードの変更
scoreboard players set 2 _ 2
scoreboard players operation #game.mode battle.setting %= 2 _
scoreboard players add #game.mode battle.setting 1

## BOSS BATTLEモードに変更
execute if score #game.mode battle.setting matches 1 run tellraw @a [{"selector":"@s","color": "gray"},{"text": "がゲームモードをBOSS BATTLEに変更しました。"}]

## TIME BATTLEモードに変更
execute if score #game.mode battle.setting matches 2 run tellraw @a [{"selector":"@s","color": "gray"},{"text": "がゲームモードをTIME BATTLEに変更しました。"}]
execute if score #game.mode battle.setting matches 2 run function battle:game/sign/time_limit/set_team/1
execute if score #game.mode battle.setting matches 2 run tag @a remove battle.boss
execute if score #game.mode battle.setting matches 2 run effect clear @a

## 看板の内容を更新する
function battle:game/sign/game_mode/show

## 音
playsound ui.button.click player @a ~ ~ ~ 1 1 1
