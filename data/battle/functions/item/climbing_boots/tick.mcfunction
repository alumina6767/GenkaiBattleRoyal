
execute unless block ~0.5 ~2 ~ air run effect give @s levitation 1 4 true
execute unless block ~-0.5 ~2 ~ air run effect give @s levitation 1 4 true
execute unless block ~ ~2 ~0.5 air run effect give @s levitation 1 4 true
execute unless block ~ ~2 ~-0.5 air run effect give @s levitation 1 4 true
execute as @a[nbt={OnGround:0b},tag=!OnGround] at @s run function battle:item/climbing_boots/y
execute as @a[nbt={OnGround:1b},tag=OnGround] at @s run function battle:item/climbing_boots/y2
execute as @a[tag=fall_effect,scores={y3=4..}] at @s run function battle:item/climbing_boots/effect
execute as @a if entity @a[tag=OnGround,scores={climbing_shift=1..}] run effect give @s minecraft:levitation 10 170 true
scoreboard players set @a climbing_shift 0
execute as @a[nbt={OnGround:1b}] at @s run effect clear @s minecraft:levitation
execute as @a[tag=fall_effect,nbt={OnGround:1b},scores={y3=4..}] at @s run function battle:item/climbing_boots/effect



