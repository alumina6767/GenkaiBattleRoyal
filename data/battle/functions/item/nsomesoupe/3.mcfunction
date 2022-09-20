item modify entity @s weapon.mainhand weapons:nsomesoupe_3
scoreboard players set @s nsomesoupe 1201

#ダメージ
scoreboard players set $100 kei_health 100
scoreboard players set $1000 kei_health 1000
execute store result score @s kei_health run data get entity @s Health
scoreboard players operation @s kei_health *= $100 kei_health
scoreboard players operation @s kei_health -= $1000 kei_health
scoreboard players operation @s ScoreToHealth = @s kei_health 


tellraw @a {"text":"\u30ce\u30c3\u30af\u30d0\u30c3\u30afV\u304c\u4ed8\u3044\u305f!","color":"yellow"}
playsound block.enchantment_table.use master @s ~ ~ ~ 1 2
playsound entity.player.levelup master @p ~ ~ ~ 1 2
execute as @s at @s run particle minecraft:enchant ^ ^1 ^0.5 0 0 0 50 1000 force
tag @s remove nsomesoupe_player