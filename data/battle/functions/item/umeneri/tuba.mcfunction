#> battle:item/umeneri/tuba
# 唾を吐く攻撃
# @internal

## タグ付け
execute if entity @s[team=A] run tag @p[gamemode=survival,distance=..8,team=!A] add target
execute if entity @s[team=B] run tag @p[gamemode=survival,distance=..8,team=!B] add target
execute if entity @s[team=C] run tag @p[gamemode=survival,distance=..8,team=!C] add target
execute if entity @s[team=D] run tag @p[gamemode=survival,distance=..8,team=!D] add target
execute if entity @s[team=E] run tag @p[gamemode=survival,distance=..8,team=!E] add target
execute if entity @s[team=F] run tag @p[gamemode=survival,distance=..8,team=!F] add target
execute if entity @s[team=G] run tag @p[gamemode=survival,distance=..8,team=!G] add target

execute if entity @a[tag=target,distance=..8,limit=1] run function battle:item/umeneri/tuba2
