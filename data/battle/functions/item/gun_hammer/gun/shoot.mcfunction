#> battle:item/gun_hammer/gun/shoot
#> 水鉄砲を撃つ
# @internal

# - 弾数を減らす
scoreboard players add @s gunhammer.rate 0
# - 発砲不可
execute if entity @s[scores={gunhammer.rate=1..}] store result score ammo _ run data get entity @s SelectedItem.tag.ammo
execute if entity @s[scores={gunhammer.rate=1..}] store result storage minecraft:temp ammo int 1 run scoreboard players get ammo _
execute if entity @s[scores={gunhammer.rate=1..}] run loot replace entity @s weapon.mainhand loot battle:item/gun_hammer/gun
execute if entity @s[scores={gunhammer.rate=1..}] run item modify entity @s weapon.mainhand battle:item/gun_hammer/ammo
execute if entity @s[scores={gunhammer.rate=1..}] run data remove storage minecraft:temp ammo

execute if entity @s[scores={gunhammer.rate=0}] run function battle:item/gun_hammer/gun/remove

# - 水鉄砲を発射
tag @s add watar_fire
execute if entity @s[scores={gunhammer.rate=0}] run playsound item.bucket.empty master @a ~ ~ ~ 0.5 2
execute if entity @s[scores={gunhammer.rate=0}] run summon armor_stand ~ ~ ~ {Tags:["new","watar_bullet"],Invisible:1b,Marker:1b}
execute if entity @s[scores={gunhammer.rate=0}] anchored eyes run tp @e[type=armor_stand,tag=new,tag=watar_bullet,sort=nearest,limit=1] @s
execute if entity @s[scores={gunhammer.rate=0}] run scoreboard players set @e[type=armor_stand,tag=new,tag=watar_bullet,sort=nearest,limit=1] gunhammer.bullet 80
execute if entity @s[scores={gunhammer.rate=0}] run scoreboard players set .itt raycast 20
execute if entity @s[scores={gunhammer.rate=0}] store result score @e[type=armor_stand,tag=new,tag=watar_bullet,sort=nearest,limit=1] gunhammer.owner run data get entity @s UUID[2]

# - random
summon marker ~ ~ ~ {Tags:["random.1","random"]}
summon marker ~ ~ ~ {Tags:["random.2","random"]}
summon marker ~ ~ ~ {Tags:["random.3","random"]}
summon marker ~ ~ ~ {Tags:["random.4","random"]}
summon marker ~ ~ ~ {Tags:["random.5","random"]}
tag @e[type=marker,tag=random,limit=1,sort=random] add random_add

execute if entity @e[type=marker,tag=random_add,tag=random.1] run tp @e[type=armor_stand,tag=new,tag=watar_bullet,sort=nearest,limit=1] ~ ~1.55 ~ ~ ~
execute if entity @e[type=marker,tag=random_add,tag=random.2] run tp @e[type=armor_stand,tag=new,tag=watar_bullet,sort=nearest,limit=1] ~ ~1.55 ~ ~1 ~
execute if entity @e[type=marker,tag=random_add,tag=random.3] run tp @e[type=armor_stand,tag=new,tag=watar_bullet,sort=nearest,limit=1] ~ ~1.55 ~ ~-1 ~
execute if entity @e[type=marker,tag=random_add,tag=random.4] run tp @e[type=armor_stand,tag=new,tag=watar_bullet,sort=nearest,limit=1] ~ ~1.55 ~ ~1 ~2
execute if entity @e[type=marker,tag=random_add,tag=random.5] run tp @e[type=armor_stand,tag=new,tag=watar_bullet,sort=nearest,limit=1] ~ ~1.55 ~ ~-1 ~2
kill @e[type=marker,tag=random]

execute if entity @s[scores={gunhammer.rate=0}] as @e[type=armor_stand,tag=new,tag=watar_bullet,sort=nearest,limit=1] at @s anchored eyes as @s run function battle:item/gun_hammer/gun/tp
tag @s remove watar_fire
kill @e[type=armor_stand,tag=new,tag=watar_bullet]

# - 銃レート設定
execute if entity @s[scores={gunhammer.rate=0}] run scoreboard players set @s gunhammer.rate 10
advancement revoke @s only battle:item/gun_hammer/shoot
