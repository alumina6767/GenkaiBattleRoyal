#> battle:item/kasugai/use
#> 某市を使用

#> sound
execute as @s at @s run playsound item.totem.use master @s ~ ~ ~ 0.1 1
#> particle
execute as @s at @s run particle totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.5 150 force @a 
execute as @s at @s run particle flame ~ ~1 ~ 0.5 0.5 0.5 0.5 150 force @a 
#> score
scoreboard players set @s kasugai.time 2400
scoreboard players reset @s kasugai.use
#> clear
item replace entity @s weapon.mainhand with air
#> advancements
advancement revoke @s only battle:item/kasugai/rod