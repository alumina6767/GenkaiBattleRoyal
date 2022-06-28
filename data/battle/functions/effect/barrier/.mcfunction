#> battle:effect/barrier/
# バリア
# @internal

#>
# @internal
    #declare tag barrier.blockable バリアで消すことのできるエンティティ
    #declare tag barrier.effect バリアエフェクトがかかっているエンティティ

## ボスのチームを所得
scoreboard players operation _ battle.team = @s battle.team

## 防げるエンティティを探索
execute positioned ~ ~ ~ as @e[predicate=battle:barrier/blockable,predicate=!battle:same_team,distance=..3.5] run function battle:effect/barrier/2
