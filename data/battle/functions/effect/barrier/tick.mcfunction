#> battle:effect/barrier/tick
# ティック
# @internal



## 回転軸
execute as 00000006-0000-0007-0000-000100000000 at @s run tp @s ~ ~ ~ ~2 ~

## シールド回転
execute unless score 00000006-0000-0007-0000-000100000001 battle matches 0.. positioned as @a[tag=battle.boss,team=A] rotated as 00000006-0000-0007-0000-000100000000 run tp 00000006-0000-0007-0000-000100000001 ^ ^ ^2 ~ ~

## シールドの一時停止
scoreboard players remove @e[type=armor_stand,tag=battle.boss.shield] battle 1
scoreboard players reset @e[type=armor_stand,tag=battle.boss.shield,scores={battle=..0}]