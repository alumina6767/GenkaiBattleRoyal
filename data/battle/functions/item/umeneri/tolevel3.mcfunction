#> battle:item/umeneri/tolevel3
# level3 にレベルアップ
# @internal

tellraw @a[tag=target] "たらこがレベル3に進化した!!"
tag @s remove level2
tag @s add level3