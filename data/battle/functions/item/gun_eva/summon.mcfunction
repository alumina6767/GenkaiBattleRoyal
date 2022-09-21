playsound entity.firework_rocket.blast master @s ~ ~ ~ 1 0

playsound entity.player.attack.crit master @s ~ ~ ~ 1 0

#かぶるかも
tag @s add rotate

execute positioned ~ ~1 ~ run summon marker ^0.2 ^ ^0.1 {Tags:["1","move","eva"]}
execute positioned ~ ~1 ~ run summon marker ^0.1 ^0.1 ^0.1 {Tags:["2","move","eva"]}
execute positioned ~ ~1 ~ run summon marker ^ ^0.2 ^0.1 {Tags:["3","move","eva"]}
execute positioned ~ ~1 ~ run summon marker ^-0.2 ^ ^0.1 {Tags:["4","move","eva"]}
execute positioned ~ ~1 ~ run summon marker ^-0.1 ^0.1 ^0.1 {Tags:["5","move","eva"]}
execute positioned ~ ~1 ~ run summon marker ^0.1 ^-0.1 ^0.1 {Tags:["6","move","eva"]}
execute positioned ~ ~1 ~ run summon marker ^-0.1 ^-0.1 ^0.1 {Tags:["7","move","eva"]}
execute positioned ~ ~1 ~ run summon marker ^ ^0.2 ^0.1 {Tags:["8","move","eva"]}
execute as @e[type=marker] at @s rotated as @a[tag=rotate,sort=nearest] run tp ^ ^ ^
tag @s remove rotate

scoreboard players set @e[tag=move] eva_move 25
scoreboard players set @e[tag=eva] raycast 21
scoreboard players operation @s battle.team = @e[tag=move] battle.team


execute as @e[tag=1,type=marker,sort=nearest] at @s run tp @s ~ ~ ~ ~ ~10
execute as @e[tag=2,type=marker,sort=nearest] at @s run tp @s ~ ~ ~ ~5 ~5
execute as @e[tag=3,type=marker,sort=nearest] at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[tag=4,type=marker,sort=nearest] at @s run tp @s ~ ~ ~ ~-10 ~
execute as @e[tag=5,type=marker,sort=nearest] at @s run tp @s ~ ~ ~ ~-5 ~5
execute as @e[tag=6,type=marker,sort=nearest] at @s run tp @s ~ ~ ~ ~ ~-10
execute as @e[tag=7,type=marker,sort=nearest] at @s run tp @s ~ ~ ~ ~5 ~-5
execute as @e[tag=8,type=marker,sort=nearest] at @s run tp @s ~ ~ ~ ~-5 ~-5

tag @e[tag=1,type=marker,sort=nearest] remove 1
tag @e[tag=2,type=marker,sort=nearest] remove 2
tag @e[tag=3,type=marker,sort=nearest] remove 3
tag @e[tag=4,type=marker,sort=nearest] remove 4
tag @e[tag=5,type=marker,sort=nearest] remove 5
tag @e[tag=6,type=marker,sort=nearest] remove 6
tag @e[tag=7,type=marker,sort=nearest] remove 7
tag @e[tag=8,type=marker,sort=nearest] remove 8

execute as @e[tag=move] at @s run function battle:item/gun_eva/move

tag @e[tag=move] remove move

scoreboard players set @s Rod 0
