#> battle:item/glow_bow/player/item/27
#> 
execute store result score _ _ run data get entity @s Inventory[{Slot:27b}].tag.ammo
execute if score _ _ matches ..4 run scoreboard players add _ _ 1

execute store result storage temp: damage int 1 run scoreboard players get _ _
item modify entity @s inventory.18 battle:item/glow_bow/ammo
scoreboard players reset _ _
data remove storage temp: damage