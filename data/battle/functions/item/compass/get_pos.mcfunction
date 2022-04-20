#> battle:item/compass/get_pos
# @internal

data modify storage tmp tmp set from entity @s Pos
data modify storage tmp lPos.X set from storage tmp tmp[0]
data modify storage tmp lPos.Y set from storage tmp tmp[1]
data modify storage tmp lPos.Z set from storage tmp tmp[2]