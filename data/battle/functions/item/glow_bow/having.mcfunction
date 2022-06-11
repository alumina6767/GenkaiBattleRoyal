#> battle:item/glow_bow/having
# -- 弓を持っているプレイヤーに対して実行される
# @internal

# - 矢を放つ
execute if entity @s[nbt={SelectedItem:{id:"minecraft:bow",tag:{glow_bow:1b}}},scores={glowbow.use=1..}] run function battle:item/glow_bow/shot

# - 矢を与える(矢を持っていない+弓を持っているときに実行)
execute if entity @s[nbt=!{Inventory:[{id:"minecraft:arrow"}]}] if entity @s[nbt={SelectedItem:{id:"minecraft:bow",tag:{glow_bow:1b}}}] run function battle:item/glow_bow/give

# - 弓を持っていない
execute if entity @s[nbt=!{SelectedItem:{id:"minecraft:bow",tag:{glow_bow:1b}}}] run function battle:item/glow_bow/out

# - 矢の演出
execute if entity @e[type=arrow,tag=Item.glowbow.arrow] as @e[type=arrow,tag=Item.glowbow.arrow] at @s run particle firework ~ ~ ~ 0 0 0 0 1 force @a

scoreboard players set @s glowbow.use 0
advancement revoke @s only battle:item/glow_bow/tick 