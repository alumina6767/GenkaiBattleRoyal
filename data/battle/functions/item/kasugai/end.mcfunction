#> battle:item/kasugai/end
#> 凍結した!

# / death log
tellraw @a [{"selector":"@s"},{"text": "は某市によって凍結した","color": "gray"}]

# / particle
particle block ice ~ ~1 ~ 0.5 0.5 0.5 0.05 150 force @a

# / sound
playsound block.glass.break master @a ~ ~ ~ 0.25 0

# / reset
scoreboard players reset @s kasugai.time

# / kill
kill @s