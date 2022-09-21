tag @s add nsomesoupe_player
scoreboard players set @s Rod 0
summon marker ~ ~ ~ {Tags:["kb2","soup"]}
summon marker ~ ~ ~ {Tags:["kb5","soup"]}
execute as @e[sort=random,tag=soup,limit=1] at @s run function battle:item/nsomesoupe/random