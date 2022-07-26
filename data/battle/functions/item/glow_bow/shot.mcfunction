#> battle:item/glow_bow/shot
# - 発光棘弓を放つ
# @internal

#>
# @private
    #declare score_holder -1

# 不足
execute if entity @s[nbt={SelectedItem:{tag:{glow_bow:1b,ammo:0}}}] run function battle:item/glow_bow/ammo_shortege

# 近くの矢にタグ付与
execute if entity @s[nbt=!{SelectedItem:{tag:{glow_bow:1b,ammo:0}}}] run tag @e[type=arrow,sort=nearest,distance=..2.5,limit=1] add Item.glowbow.arrow
execute if entity @s[nbt=!{SelectedItem:{tag:{glow_bow:1b,ammo:0}}}] run data merge entity @e[type=arrow,sort=nearest,distance=..2.5,limit=1] {life:1200s}
execute if entity @s[nbt={Inventory:[{id:"minecraft:bow",tag:{ammo:0}}]}]
# 弓の残弾を減らす
execute store result score _ _ run data get entity @s SelectedItem.tag.ammo
scoreboard players set -1 _ 1
scoreboard players operation _ _ -= -1 _
execute if score _ _ matches 0.. run item modify entity @s weapon.mainhand battle:item/glow_bow/ammo

# もし通常の矢を持っていたら矢を1本与える(ゴーストアイテム対策で一度消す)
execute if entity @s[tag=!Item.glowbow.arrow.have] run loot give @s loot battle:glow_bow/normal_arrow
execute if entity @s[tag=!Item.glowbow.arrow.have] run clear @s arrow 1
execute if entity @s[tag=!Item.glowbow.arrow.have] run loot give @s loot battle:glow_bow/normal_arrow

# スコアリセット
scoreboard players reset _ _
scoreboard players reset -1 _

scoreboard players set @s glowbow.use 0
