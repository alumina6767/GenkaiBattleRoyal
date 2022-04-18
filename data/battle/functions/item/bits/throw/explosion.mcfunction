#> battle:item/bits/throw/explosion
# 爆発
# @internal

execute if entity @s[tag=100bits] run particle dust 0.729 0 0.973 2.5 ~ ~ ~ 1.5 1.5 1.5 0.1 50 force
execute if entity @s[tag=100bits] run particle dust 0.902 0.604 1 2 ~ ~ ~ 1.5 1.5 1.5 0.1 50 force
execute if entity @s[tag=100bits] run particle end_rod ~ ~ ~ 1.5 1.5 1.5 0.1 50 force

execute if entity @s[tag=1000bits] run particle dust 0.153 1 0.631 2.5 ~ ~ ~ 2 2 2 0.1 70 force
execute if entity @s[tag=1000bits] run particle dust 0.659 1 0.91 2 ~ ~ ~ 2 2 2 0.1 70 force
execute if entity @s[tag=1000bits] run particle end_rod ~ ~ ~ 2 2 2 0.1 70 force

execute if entity @s[tag=5000bits] run particle dust 0.31 0.345 1 2.5 ~ ~ ~ 2.5 2.5 2.5 0.1 90 force
execute if entity @s[tag=5000bits] run particle dust 0.71 0.851 1 2 ~ ~ ~ 2.5 2.5 2.5 0.1 90 force
execute if entity @s[tag=5000bits] run particle end_rod ~ ~ ~ 2.5 2.5 2.5 0.1 90 force

execute if entity @s[tag=10000bits] run particle dust 1 0.153 0.153 2.5 ~ ~ ~ 3 3 3 0.1 110 force
execute if entity @s[tag=10000bits] run particle dust 1 0.694 0.694 2 ~ ~ ~ 3 3 3 0.1 110 force
execute if entity @s[tag=10000bits] run particle end_rod ~ ~ ~ 3 3 3 0.1 110 force

execute if entity @s[tag=100000bits] run particle dust 1 0.718 0.153 2.5 ~ ~ ~ 3.5 3.5 3.5 0.1 130 force
execute if entity @s[tag=100000bits] run particle dust 0.953 0.992 0.651 2 ~ ~ ~ 3.5 3.5 3.5 0.1 130 force
execute if entity @s[tag=100000bits] run particle end_rod ~ ~ ~ 3.5 3.5 3.5 0.1 130 force


## キル
kill @s