#> battle:item/gun_hammer/hammer/hammer
# - ハンマーに関するコマンド
# @internal

# - ハンマーをTP
execute as @e[type=armor_stand,tag=HammerModel] at @s run data modify entity @s Pos set from entity @e[type=armor_stand,tag=ThrowHammer,limit=1,sort=nearest] Pos
# - ハンマーをTP
execute as @e[type=armor_stand,tag=HammerModel] at @s run tp @s ~ ~ ~ ~30 ~

# - 爆発
execute as @e[type=armor_stand,tag=ThrowHammer] at @s unless block ~ ~-0.1 ~ #raycast:air run function battle:item/gun_hammer/hammer/explode
