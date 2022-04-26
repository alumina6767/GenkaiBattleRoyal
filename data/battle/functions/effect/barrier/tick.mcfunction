#> battle:effect/barrier/tick
# ティック
# @internal



## 回転軸
execute as 00000006-0000-0007-0000-000100000000 at @s run tp @s ~ ~ ~ ~2 ~

## シールド回転
execute unless score 00000006-0000-0007-0000-000100000001 battle matches 0.. positioned as @a[tag=battle.boss,team=A] rotated as 00000006-0000-0007-0000-000100000000 run tp 00000006-0000-0007-0000-000100000001 ^ ^ ^2 ~ ~
execute unless score 00000006-0000-0007-0000-000100000002 battle matches 0.. positioned as @a[tag=battle.boss,team=B] rotated as 00000006-0000-0007-0000-000100000000 run tp 00000006-0000-0007-0000-000100000002 ^ ^ ^2 ~ ~
execute unless score 00000006-0000-0007-0000-000100000003 battle matches 0.. positioned as @a[tag=battle.boss,team=C] rotated as 00000006-0000-0007-0000-000100000000 run tp 00000006-0000-0007-0000-000100000003 ^ ^ ^2 ~ ~
execute unless score 00000006-0000-0007-0000-000100000004 battle matches 0.. positioned as @a[tag=battle.boss,team=D] rotated as 00000006-0000-0007-0000-000100000000 run tp 00000006-0000-0007-0000-000100000004 ^ ^ ^2 ~ ~
execute unless score 00000006-0000-0007-0000-000100000005 battle matches 0.. positioned as @a[tag=battle.boss,team=E] rotated as 00000006-0000-0007-0000-000100000000 run tp 00000006-0000-0007-0000-000100000005 ^ ^ ^2 ~ ~
execute unless score 00000006-0000-0007-0000-000100000006 battle matches 0.. positioned as @a[tag=battle.boss,team=F] rotated as 00000006-0000-0007-0000-000100000000 run tp 00000006-0000-0007-0000-000100000006 ^ ^ ^2 ~ ~
execute unless score 00000006-0000-0007-0000-000100000007 battle matches 0.. positioned as @a[tag=battle.boss,team=G] rotated as 00000006-0000-0007-0000-000100000000 run tp 00000006-0000-0007-0000-000100000007 ^ ^ ^2 ~ ~

## シールドの一時停止
scoreboard players remove @e[type=armor_stand,tag=battle.boss.shield] battle 1
scoreboard players reset @e[type=armor_stand,tag=battle.boss.shield,scores={battle=..0}]