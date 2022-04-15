#> battle:item/bits/100to1000/summon
# 端数のアイテムを渡す
# @internal

loot give @s loot battle:bits/100

## ループ
scoreboard players remove count tmp 1
execute if score count tmp matches 1.. run function battle:item/bits/100to1000/summon