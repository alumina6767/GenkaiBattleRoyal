#> battle:launch_crafting_table/judge
# @internal

execute if block ^ ^ ^ crafting_table run scoreboard players set flag tmp 1
execute if score flag tmp matches 1 align xyz positioned ~0.5 ~0.1 ~0.5 run summon firework_rocket ^ ^ ^ {Fire:1000,LifeTime:30,Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:crafting_table"},NoGravity:1b,Time:571,DropItem:0b}],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;16711680]}]}}}}
execute if score flag tmp matches 1 run setblock ^ ^ ^ air replace