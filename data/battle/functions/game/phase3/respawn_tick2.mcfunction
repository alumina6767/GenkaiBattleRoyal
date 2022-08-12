#> battle:game/phase3/respawn_tick2
# リスポーン待機
# @internal

## 待機時間の減少
scoreboard players remove @s battle.respawn_cd 1

## カウントダウン
execute if score @s battle.respawn_cd matches 100 run title @s title "5"
execute if score @s battle.respawn_cd matches 100 at @s run playsound minecraft:block.respawn_anchor.charge player @s ~ ~ ~ 1 0.5 1

execute if score @s battle.respawn_cd matches 080 run title @s title "4"
execute if score @s battle.respawn_cd matches 080 at @s run playsound minecraft:block.respawn_anchor.charge player @s ~ ~ ~ 1 0.7 1

execute if score @s battle.respawn_cd matches 060 run title @s title "3"
execute if score @s battle.respawn_cd matches 060 at @s run playsound minecraft:block.respawn_anchor.charge player @s ~ ~ ~ 1 0.9 1

execute if score @s battle.respawn_cd matches 040 run title @s title "2"
execute if score @s battle.respawn_cd matches 040 at @s run playsound minecraft:block.respawn_anchor.charge player @s ~ ~ ~ 1 1.2 1

execute if score @s battle.respawn_cd matches 020 run title @s title "1"
execute if score @s battle.respawn_cd matches 020 at @s run playsound minecraft:block.respawn_anchor.charge player @s ~ ~ ~ 1 2.0 1

## 体力の回復
execute if score @s battle.respawn_cd matches 040 run effect give @s instant_health 1 100 true

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
### リスポーンタイトル
execute if score @s battle.respawn_cd matches 0 run title @s subtitle ""
execute if score @s battle.respawn_cd matches 0 run title @s title "Respawn"
execute if score @s battle.respawn_cd matches 0 at @s run playsound minecraft:item.totem.use player @a ~ ~ ~ 1 1.0 0
### パーティクル
execute if score @s battle.respawn_cd matches 0 at @s run particle totem_of_undying ~ ~2 ~ 0.2 0.2 0.2 1.0 50 normal @a
### スコアリセット
execute if score @s battle.respawn_cd matches 0 run scoreboard players reset @s battle.respawn_cd
### タグを削除
execute unless score @s battle.respawn_cd matches -2147483648..2147483647 run tag @s remove battle.respawn_cd
