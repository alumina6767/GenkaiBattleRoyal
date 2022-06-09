execute as @s at @s run particle item dirt ~ ~0.5 ~ 1 0 1 0.1 100
execute as @s at @s run playsound entity.player.attack.crit master @a[distance=..10] ~ ~ ~ 1 2
execute as @s at @s run playsound item.shield.block master @a[distance=..10] ~ ~ ~ 1 0


tag @s remove fall_effect

