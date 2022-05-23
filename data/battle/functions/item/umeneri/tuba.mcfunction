#> battle:item/umeneri/tuba
# 唾を吐く攻撃
# @internal

## タグ付け
scoreboard players operation _ battle.team = @s battle.team
tag @p[predicate=!battle:invulnerable_gamemode,distance=..8,predicate=!battle:same_team] add target
scoreboard players reset _ battle.team

execute if entity @a[tag=target,distance=..8,limit=1] run function battle:item/umeneri/tuba2
