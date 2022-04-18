#> battle:item/umeneri/tolevel4
# level4 にレベルアップ
# @internal

tellraw @a[tag=target] "たらこがレベル4に進化した!!"
tag @s remove level3
tag @s add level4

## 速度上昇
attribute @s generic.movement_speed modifier add 1de03603-78d7-4019-9b99-d1c19a6217eb "level4" 0.1 multiply_base