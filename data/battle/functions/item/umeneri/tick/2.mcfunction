#> battle:item/umeneri/tick/2
# tick
# @internal

## スコア計算
scoreboard players remove @s battle 1
scoreboard players operation @s battle %= tarako.interval battle

## つばを吐く
execute as @s[tag=!level1,scores={battle=0}] at @s run function battle:item/umeneri/tuba

## 音
execute as @s[scores={battle=10}] run playsound block.beehive.drip player @a ~ ~ ~ 2.0 0.5 0
execute as @s[scores={battle=15}] run playsound block.beehive.drip player @a ~ ~ ~ 2.0 0.5 0

## パーティクル
execute at @s positioned ~ ~0.2 ~ run particle snowflake ^ ^ ^-0.8 0.1 0 0.1 0.0001 3 force

