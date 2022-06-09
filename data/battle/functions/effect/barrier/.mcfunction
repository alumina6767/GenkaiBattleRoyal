#> battle:effect/barrier/
# バリア
# @internal

#>
# @internal
    #declare tag barrier.blockable
# @private
    #declare tag target

## ボスのチームを所得
scoreboard players operation _ battle.team = @s battle.team

## 防げるエンティティにタグ付け
execute positioned ~ ~1 ~ run tag @e[predicate=battle:barrier/blockable,predicate=!battle:same_team,distance=..3.5] add target

## シールドを移動
execute if entity @s[team=A] as @e[predicate=battle:barrier/blockable,tag=target,limit=1] facing entity @s eyes positioned as @s positioned ~ ~-1.3 ~ run tp 00000006-0000-0007-0000-000100000001 ^0.5 ^ ^ ~ ~
execute if entity @s[team=B] as @e[predicate=battle:barrier/blockable,tag=target,limit=1] facing entity @s eyes positioned as @s positioned ~ ~-1.3 ~ run tp 00000006-0000-0007-0000-000100000002 ^0.5 ^ ^ ~ ~
execute if entity @s[team=C] as @e[predicate=battle:barrier/blockable,tag=target,limit=1] facing entity @s eyes positioned as @s positioned ~ ~-1.3 ~ run tp 00000006-0000-0007-0000-000100000003 ^0.5 ^ ^ ~ ~
execute if entity @s[team=D] as @e[predicate=battle:barrier/blockable,tag=target,limit=1] facing entity @s eyes positioned as @s positioned ~ ~-1.3 ~ run tp 00000006-0000-0007-0000-000100000004 ^0.5 ^ ^ ~ ~
execute if entity @s[team=E] as @e[predicate=battle:barrier/blockable,tag=target,limit=1] facing entity @s eyes positioned as @s positioned ~ ~-1.3 ~ run tp 00000006-0000-0007-0000-000100000005 ^0.5 ^ ^ ~ ~
execute if entity @s[team=F] as @e[predicate=battle:barrier/blockable,tag=target,limit=1] facing entity @s eyes positioned as @s positioned ~ ~-1.3 ~ run tp 00000006-0000-0007-0000-000100000006 ^0.5 ^ ^ ~ ~
execute if entity @s[team=G] as @e[predicate=battle:barrier/blockable,tag=target,limit=1] facing entity @s eyes positioned as @s positioned ~ ~-1.3 ~ run tp 00000006-0000-0007-0000-000100000007 ^0.5 ^ ^ ~ ~

## シールドの一時停止のインターバル
execute if entity @s[team=A] as @e[predicate=battle:barrier/blockable,tag=target,limit=1] run scoreboard players set 00000006-0000-0007-0000-000100000001 battle 10
execute if entity @s[team=B] as @e[predicate=battle:barrier/blockable,tag=target,limit=1] run scoreboard players set 00000006-0000-0007-0000-000100000002 battle 10
execute if entity @s[team=C] as @e[predicate=battle:barrier/blockable,tag=target,limit=1] run scoreboard players set 00000006-0000-0007-0000-000100000003 battle 10
execute if entity @s[team=D] as @e[predicate=battle:barrier/blockable,tag=target,limit=1] run scoreboard players set 00000006-0000-0007-0000-000100000004 battle 10
execute if entity @s[team=E] as @e[predicate=battle:barrier/blockable,tag=target,limit=1] run scoreboard players set 00000006-0000-0007-0000-000100000005 battle 10
execute if entity @s[team=F] as @e[predicate=battle:barrier/blockable,tag=target,limit=1] run scoreboard players set 00000006-0000-0007-0000-000100000006 battle 10
execute if entity @s[team=G] as @e[predicate=battle:barrier/blockable,tag=target,limit=1] run scoreboard players set 00000006-0000-0007-0000-000100000007 battle 10

execute as @e[predicate=battle:barrier/blockable,tag=target] run function battle:effect/barrier/2
