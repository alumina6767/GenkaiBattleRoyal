#> battle:item/gun_hammer/gun/tp
#> 弾を飛ばす(実行者=marker,tag=water_bullet)
# @internal

# - particle
particle falling_water ~ ~ ~ 0 0 0 0 2 force @a

# - プレイヤーにヒット
execute as @s at @s if entity @a[dx=0,dz=0,dy=0,tag=!watar_fire] positioned ~-1 ~-1 ~-1 if entity @e[dx=0,dz=0,dy=0,tag=!watar_fire] run execute as @a[sort=nearest,limit=1] run function battle:item/gun_hammer/gun/hit

# - ブロック検知
scoreboard players set .itt raycast 20
execute if block ~ ~ ~ #raycast:partial run function raycast:partial
execute unless block ~ ~ ~ #raycast:air run scoreboard players set @s gunhammer.bullet 0
scoreboard players remove @s gunhammer.bullet 1
execute if score .itt raycast matches 0 run scoreboard players set @s gunhammer.bullet 0
# - 再起
execute if score @s gunhammer.bullet matches 1.. run tp ^ ^ ^0.25
execute if score @s gunhammer.bullet matches 1.. as @s at @s run function battle:item/gun_hammer/gun/tp

