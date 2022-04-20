#> battle:launch_crafting_table/loop
# 作業台を探す
# @internal

scoreboard players add _ _ 1

execute positioned ^ ^ ^ run function battle:launch_crafting_table/judge
execute if score flag tmp matches 0 positioned ~ ~1.1 ~ run function battle:launch_crafting_table/judge
execute if score flag tmp matches 0 positioned ~ ~-1.1 ~ run function battle:launch_crafting_table/judge
execute if score flag tmp matches 0 positioned ~1.1 ~ ~ run function battle:launch_crafting_table/judge
execute if score flag tmp matches 0 positioned ~-1.1 ~ ~ run function battle:launch_crafting_table/judge
execute if score flag tmp matches 0 positioned ~1.1 ~1.1 ~ run function battle:launch_crafting_table/judge
execute if score flag tmp matches 0 positioned ~-1.1 ~1.1 ~ run function battle:launch_crafting_table/judge
execute if score flag tmp matches 0 positioned ~1.1 ~-1.1 ~ run function battle:launch_crafting_table/judge
execute if score flag tmp matches 0 positioned ~-1.1 ~-1.1 ~ run function battle:launch_crafting_table/judge

execute if score flag tmp matches 0 if score _ _ matches ..20 unless block ^ ^ ^ crafting_table positioned ^ ^ ^0.25 run function battle:launch_crafting_table/loop
