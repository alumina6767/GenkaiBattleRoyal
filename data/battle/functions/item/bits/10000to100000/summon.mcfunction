#> battle:item/bits/10000to100000/summon
# 端数のアイテムを渡す
# @internal

loot give @s loot battle:bits/10000

## ループ
scoreboard players remove count tmp 1
execute if score count tmp matches 1.. run function battle:item/bits/10000to100000/summon