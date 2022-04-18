#> battle:item/umeneri/tick
# tick
# @internal

execute as @e[type=silverfish,tag=tarako,tag=tamed,tag=!level1] at @s run function battle:item/umeneri/tuba
#execute as @e[type=silverfish,scores={battle=3..}] at @s if entity @a[distance=..5,sort=nearest,limit=1] run function battle:item/umeneri/tuba_poison