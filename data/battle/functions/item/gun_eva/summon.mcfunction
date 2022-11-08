playsound entity.firework_rocket.blast master @a ~ ~ ~ 1 0.5 0

playsound entity.player.attack.crit master @a ~ ~ ~ 1 0.5 0

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
execute as @e[type=marker,tag=move] at @s rotated as @a[tag=rotate,sort=nearest] run tp ^ ^ ^
tag @s remove rotate

scoreboard players set @e[type=marker,tag=move] eva_move 25
scoreboard players set @e[type=marker,tag=eva] raycast 21
scoreboard players operation @e[type=marker,tag=move] battle.team = @s battle.team


execute as @e[type=marker,tag=1,sort=nearest] at @s run tp @s ~ ~ ~ ~ ~10
execute as @e[type=marker,tag=2,sort=nearest] at @s run tp @s ~ ~ ~ ~5 ~5
execute as @e[type=marker,tag=3,sort=nearest] at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[type=marker,tag=4,sort=nearest] at @s run tp @s ~ ~ ~ ~-10 ~
execute as @e[type=marker,tag=5,sort=nearest] at @s run tp @s ~ ~ ~ ~-5 ~5
execute as @e[type=marker,tag=6,sort=nearest] at @s run tp @s ~ ~ ~ ~ ~-10
execute as @e[type=marker,tag=7,sort=nearest] at @s run tp @s ~ ~ ~ ~5 ~-5
execute as @e[type=marker,tag=8,sort=nearest] at @s run tp @s ~ ~ ~ ~-5 ~-5

tag @e[type=marker,tag=1,sort=nearest] remove 1
tag @e[type=marker,tag=2,sort=nearest] remove 2
tag @e[type=marker,tag=3,sort=nearest] remove 3
tag @e[type=marker,tag=4,sort=nearest] remove 4
tag @e[type=marker,tag=5,sort=nearest] remove 5
tag @e[type=marker,tag=6,sort=nearest] remove 6
tag @e[type=marker,tag=7,sort=nearest] remove 7
tag @e[type=marker,tag=8,sort=nearest] remove 8

## 発射主情報を保存
scoreboard players operation @e[type=marker,tag=move] uuid3 = @s uuid3
scoreboard players operation @e[type=marker,tag=move] battle.team = @s battle.team

execute as @e[type=marker,tag=move] at @s run function battle:item/gun_eva/move

tag @e[type=marker,tag=move] remove move

scoreboard players set @s Rod 0
