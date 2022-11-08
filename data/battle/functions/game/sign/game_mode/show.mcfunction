#> battle:game/sign/game_mode/show
# 看板の内容を更新する
# @internal

#>
# @within battle:game/sign/game_mode/**
    #declare tag battle.sign.game_mode ゲームモードを表示している看板があるところの額縁

## 看板の内容を更新
execute if score #game.mode battle.setting matches 1 at @e[type=item_frame,tag=battle.sign.game_mode] run data merge block ~ ~ ~ {Color:"-1",Text2:'{"text":"GAME MODE","color":"#FFEDD6"}',Text3:'{"text":"= BOSS BATTLE =","color":"#FF5517","clickEvent":{"action":"run_command","value":"/function battle:game/sign/game_mode/change"}}'}
execute if score #game.mode battle.setting matches 2 at @e[type=item_frame,tag=battle.sign.game_mode] run data merge block ~ ~ ~ {Color:"-1",Text2:'{"text":"GAME MODE","color":"#FFEDD6"}',Text3:'{"text":"= TIME BATTLE =","color":"#FF5517","clickEvent":{"action":"run_command","value":"/function battle:game/sign/game_mode/change"}}'}
