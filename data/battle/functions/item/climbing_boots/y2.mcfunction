execute as @s store result score @s y2 run data get entity @s Pos[1] 1
scoreboard players operation @s y -= @s y2
scoreboard players operation @s y3 = @s y
tag @s remove OnGround
tag @s add fall_effect
