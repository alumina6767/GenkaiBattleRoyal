#> battle:item/champagne/shoot_loop2
# @internal

summon minecraft:armor_stand ~ ~ ~ {Tags:[AS,Move,new,Diffuse,First,Sticky],Small:1b,Invisible:0b,Invulnerable:1b,CustomName:'{"text":"invisible"}'}
scoreboard players operation _ _ = @s champagne.power
execute as @e[type=armor_stand,tag=new,dx=0] run function battle:item/champagne/shoot_loop3