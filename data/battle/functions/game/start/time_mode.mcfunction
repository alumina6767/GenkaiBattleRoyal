#> battle:game/start/time_mode
# タイム制の時の初期設定
# @internal

## マップの準備

## スペクテイターにしてマップへTP
execute if score start_timer battle matches 9 run effect give @a night_vision 1 0 true
execute if score start_timer battle matches 9 run effect give @a blindness 1 0 true
execute if score start_timer battle matches 10 run gamemode spectator @a
execute if score start_timer battle matches 10 run execute at @e[tag=battle.map_center,limit=1] run tp @a ~ ~10 ~

## HPと満腹度回復
execute if score start_timer battle matches 20 run effect give @a instant_health 1 100 true 
execute if score start_timer battle matches 20 run effect give @a saturation 1 100 true

## アドベンチャーにして地面へTP
execute if score start_timer battle matches 219 run effect give @a night_vision 1 0 true
execute if score start_timer battle matches 219 run effect give @a blindness 1 0 true
execute if score start_timer battle matches 220 run gamemode survival @a
execute if score start_timer battle matches 220 run execute at @e[tag=battle.map_center,limit=1] run spreadplayers ~ ~ 10 10 under 100 true @a

## 無敵化と透明化と高速化
execute if score start_timer battle matches 220 run effect give @a invisibility 12 0 false
execute if score start_timer battle matches 220 run effect give @a resistance 12 0 false
execute if score start_timer battle matches 220 run effect give @a speed 12 0 false

## カウントダウン
execute if score start_timer battle matches 220 run title @a title "10"
execute if score start_timer battle matches 220 run playsound ui.button.click player @a ~ ~ ~ 1 1 1

execute if score start_timer battle matches 240 run title @a title "9"
execute if score start_timer battle matches 240 run playsound ui.button.click player @a ~ ~ ~ 1 1 1

execute if score start_timer battle matches 260 run title @a title "8"
execute if score start_timer battle matches 260 run playsound ui.button.click player @a ~ ~ ~ 1 1 1

execute if score start_timer battle matches 280 run title @a title "7"
execute if score start_timer battle matches 280 run playsound ui.button.click player @a ~ ~ ~ 1 1 1

execute if score start_timer battle matches 300 run title @a title "6"
execute if score start_timer battle matches 300 run playsound ui.button.click player @a ~ ~ ~ 1 1 1

execute if score start_timer battle matches 320 run title @a title "5"
execute if score start_timer battle matches 320 run playsound ui.button.click player @a ~ ~ ~ 1 1 1

execute if score start_timer battle matches 340 run title @a title "4"
execute if score start_timer battle matches 340 run playsound ui.button.click player @a ~ ~ ~ 1 1 1

execute if score start_timer battle matches 360 run title @a title "3"
execute if score start_timer battle matches 360 run playsound ui.button.click player @a ~ ~ ~ 1 1 1

execute if score start_timer battle matches 380 run title @a title "2"
execute if score start_timer battle matches 380 run playsound ui.button.click player @a ~ ~ ~ 1 1 1

execute if score start_timer battle matches 400 run title @a title "1"

execute if score start_timer battle matches 420 run title @a title "start!"
execute if score start_timer battle matches 420 run playsound entity.generic.explode player @a ~ ~ ~ 1 1 1

## インクリメント
scoreboard players add start_timer battle 1

## ループ
execute if score start_timer battle matches ..420 run schedule function battle:game/start/time_mode 1t append

## ゲームフェーズをゲーム中に
execute if score start_timer battle matches 421.. run function battle:game/phase3/start

## スコアリセット
execute if score start_timer battle matches 421.. run scoreboard players reset start_timer battle
