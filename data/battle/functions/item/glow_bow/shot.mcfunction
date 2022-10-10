#> battle:item/glow_bow/shot
#> 矢を発射する

#> 自身が発射した矢にタグを付与する
execute store result score owner[0] _ run data get entity @s UUID[0]
execute as @e[type=arrow,limit=5,distance=..5] store result score @s _ run data get entity @s Owner[0]

execute as @e[type=arrow,limit=5,distance=..5] if score @s _ = owner[0] _ run tag @s add GlowArrow
execute as @e[type=arrow,limit=5,distance=..5] if score @s _ = owner[0] _ run data merge entity @s {life:1200s,crit:false}

#> リセット
scoreboard players reset @e[type=arrow,limit=5,distance=..5] _
scoreboard players reset owner[0] _

#> 矢をへらす
scoreboard players remove _ _ 1
execute store result storage temp: damage int 1 run scoreboard players get _ _

execute if entity @s[tag=weapon.mainhand] run item modify entity @s weapon.mainhand battle:item/glow_bow/ammo