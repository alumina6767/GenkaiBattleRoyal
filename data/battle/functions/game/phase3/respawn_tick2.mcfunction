#> battle:game/phase3/respawn_tick2
# リスポーン待機
# @internal

## 待機時間の減少
scoreboard players remove @s battle.respawn_cd 1

## カウントダウン
execute if score @s battle.respawn_cd matches 100 run title @s title "5"
execute if score @s battle.respawn_cd matches 080 run title @s title "4"
execute if score @s battle.respawn_cd matches 060 run title @s title "3"
execute if score @s battle.respawn_cd matches 040 run title @s title "2"
execute if score @s battle.respawn_cd matches 020 run title @s title "1"
execute if score @s battle.respawn_cd matches 000 run title @s subtitle ""
execute if score @s battle.respawn_cd matches 000 run title @s title "Respawn"

## 体力や満腹度の回復
execute if score @s battle.respawn_cd matches 040 run effect give @s instant_health 1 100 true
execute if score @s battle.respawn_cd matches 040 run effect give @s saturation 1 100 true

## 終了処理
### しばらく無敵化
execute if score @s battle.respawn_cd matches 0 run effect give @s resistance 10 5 false
execute if score @s battle.respawn_cd matches 0 run effect give @s speed 10 5 false
### フェードインエフェクト
execute if score @s battle.respawn_cd matches 0 run effect give @s night_vision 1 0 true
execute if score @s battle.respawn_cd matches 0 run effect give @s blindness 1 0 true
### サバイバルに
execute if score @s battle.respawn_cd matches 0 run gamemode survival @s
### 地面に埋まらないようにtp
execute if score @s battle.respawn_cd matches 0 at @s run spreadplayers ~ ~ 0 1 under 200 false @s
### スコアリセット
execute if score @s battle.respawn_cd matches 0 run scoreboard players reset @s battle.respawn_cd
### タグを削除
execute unless score @s battle.respawn_cd matches -2147483648..2147483647 run tag @s remove battle.respawn_cd
