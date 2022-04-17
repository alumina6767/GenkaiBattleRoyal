#> battle:effect/barrier/
# バリア
# @internal

#>
# @private
    #declare tag target

## 動いている矢にタグ付け
execute positioned ~ ~1 ~ run tag @e[type=#arrows,distance=..3.5,nbt={inGround:0b}] add target

## シールドを移動
execute if entity @s[team=A] as @e[type=#arrows,tag=target,limit=1] facing entity @s eyes positioned as @s positioned ~ ~-1.3 ~ run tp 00000006-0000-0007-0000-000100000001 ^0.5 ^ ^ ~ ~

## シールドの一時停止のインターバル
execute if entity @s[team=A] as @e[type=#arrows,tag=target,limit=1] run scoreboard players set 00000006-0000-0007-0000-000100000001 battle 10

execute as @e[type=#arrows,tag=target] run function battle:effect/barrier/2
