#> battle:item/glow_bow/player/having
#> プレイヤーが弓を持っているときに実行される

# 矢をあげる
execute store success score success _ run give @s[nbt=!{Inventory:[{id:"minecraft:arrow"}]}] arrow{GBarrow:1b} 1

# 矢が捨てられる
execute if entity @e[type=item,nbt={Item:{tag:{GBarrow:1b}}}] run kill @e[type=item,nbt={Item:{tag:{GBarrow:1b}}}]

# タグ
execute if score success _ matches 1 run tag @s add GBarrow
scoreboard players reset success _
tag @s remove GB.shot