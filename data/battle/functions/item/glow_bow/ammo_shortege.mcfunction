#> battle:item/glow_bow/ammo_shortege
# 弾薬が不足している
# @internal

kill @e[type=arrow,sort=nearest,distance=..2.5,limit=1]
title @s actionbar [{"text": "弾が不足している","color": "red"}]
stopsound @a * entity.arrow.shoot
playsound block.note_block.bass master @s ~ ~ ~ 0.5 0
