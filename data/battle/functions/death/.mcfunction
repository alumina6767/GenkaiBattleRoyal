#> battle:death/
# 死亡時
# @internal

## チームIDを検索用に保存
scoreboard players operation _ battle.team = @s battle.team

## 同じチームのボスの最大体力を削る
execute as @a[tag=battle.boss] if score @s battle.team = _ battle.team run function battle:death/effect2boss

## 死亡フラグを戻す
scoreboard players reset @s battle.death

## スコアリセット
scoreboard players reset _ battle.team