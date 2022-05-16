#> battle:item/champagne/shoot
# 弾を撃つ
# @internal

summon minecraft:armor_stand ~ ~ ~ {Tags:[AS,Move,new,Diffuse,First],Small:1b}
execute as @e[type=armor_stand,tag=new,dx=0] run function battle:item/champagne/shoot2