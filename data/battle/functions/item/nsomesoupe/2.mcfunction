execute as @s at @s run item modify entity @s weapon.mainhand battle:nsomesoupe_1
scoreboard players set @s nsomesoupe 1201
tellraw @s {"text":"ノックバックⅡが付いた!","color":"yellow"}
playsound block.enchantment_table.use master @s ~ ~ ~ 1 2
playsound entity.player.levelup master @p ~ ~ ~ 1 2
execute as @s at @s run particle minecraft:enchant ^ ^1 ^0.5 0 0 0 50 1000 force
tag @s remove nsomesoupe_player