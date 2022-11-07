#> battle:death/
# 死亡時
# @internal

## チームIDを検索用に保存
scoreboard players operation _ battle.team = @s battle.team

## 同じチームのボスの最大体力を削る
execute as @a[tag=battle.boss] if score @s battle.team = _ battle.team run function battle:death/effect2boss

## スコアリセット
scoreboard players reset _ battle.team

## リスポーン
execute if score #game.mode battle.setting matches 2 run function battle:game/phase3/respawn

## 進捗リセット
advancement revoke @s only battle:died