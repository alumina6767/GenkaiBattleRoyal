#> battle:effect/jump_small_2/check_pad
# PADが近くにあるか
# @internal

scoreboard players set _ _ 0
execute store success score _ _ positioned ~ ~-1.1 ~ run tag @e[type=falling_block,tag=jpad_s2,dy=1,distance=..0.8,limit=1] add target
execute if score _ _ matches 1 run function battle:effect/jump_small_2/jump