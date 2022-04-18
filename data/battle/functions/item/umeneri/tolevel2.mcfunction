#> battle:item/umeneri/tolevel2
# level2にレベルアップ
# @internal

tellraw @a[tag=target] "たらこがレベル2に進化した!!"
tag @s remove level1
tag @s add level2