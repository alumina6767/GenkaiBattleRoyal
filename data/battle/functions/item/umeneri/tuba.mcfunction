#> battle:item/umeneri/tuba
# 唾を吐く攻撃
# @internal

## タグ付け
execute if entity @s[team=A] run tag @p[gamemode=survival,distance=..5,team=!A] add target
execute if entity @s[team=B] run tag @p[gamemode=survival,distance=..5,team=!B] add target
execute if entity @s[team=C] run tag @p[gamemode=survival,distance=..5,team=!C] add target
execute if entity @s[team=D] run tag @p[gamemode=survival,distance=..5,team=!D] add target
execute if entity @s[team=E] run tag @p[gamemode=survival,distance=..5,team=!E] add target
execute if entity @s[team=F] run tag @p[gamemode=survival,distance=..5,team=!F] add target
execute if entity @s[team=G] run tag @p[gamemode=survival,distance=..5,team=!G] add target

execute if entity @a[tag=target] run function battle:item/umeneri/tuba2
