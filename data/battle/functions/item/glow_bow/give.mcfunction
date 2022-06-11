#> battle:item/glow_bow/give
# @internal

# - 矢を与える
clear @s arrow{glow_bow_arrow:1b}
loot give @s loot battle:item/glow_bow/arrow
# - 矢が捨てられた時の対策
kill @e[type=item,nbt={Item:{tag:{glow_bow_arrow:1b}}},sort=nearest,limit=1,distance=..2]
# - タグを与える
tag @s add Item.glowbow.arrow.have
