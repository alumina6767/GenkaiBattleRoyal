#> battle:effect/barrier/
# バリア
# @internal

#>
# @internal
    #declare tag barrier.blockable バリアで消すことのできるエンティティ
    #declare tag barrier.effect バリアエフェクトがかかっているエンティティ

## ボスのチームを取得
scoreboard players operation _ battle.team = @s battle.team

## ボスのuuid3を取得
scoreboard players operation _ uuid3 = @s uuid3

## 防げるエンティティを探索
execute positioned ~ ~ ~ as @e[predicate=battle:barrier/blockable,predicate=!battle:same_team,predicate=!battle:same_uuid3,distance=..3.5] run function battle:effect/barrier/2
