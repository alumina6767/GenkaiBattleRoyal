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

#region デスログ

## 保持されているダメージソースを呼び出し
scoreboard players operation _ battle.hurt_by = @s battle.hurt_by

## とどめを刺したプレイヤーを特定
execute as @a if score @s uuid3 = _ battle.hurt_by run tag @s add target

## 死因によって場合分け
execute if score @s battle.hurt_with matches 670040 run tellraw @a [{"selector":"@s"},{"text":"は","color": "gray"},{"selector":"@a[tag=target]"},{"text":"のシャンパンガトリングでハチの巣にされた","color": "gray"}]

## タグの消去
tag @a[tag=target] remove target

## スコアのリセット
scoreboard players reset @s battle.hurt_by
scoreboard players reset @s battle.hurt_with

#endregion