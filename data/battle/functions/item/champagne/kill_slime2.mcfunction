#> battle:item/champagne/kill_slime2
# kill
# @internal

## uuid3でスライムを検索
scoreboard players operation _ _ = @s uuid3
execute as @e[type=slime,tag=champagne,distance=..10] if score @s uuid3 = _ _ run tp ~ -200 ~

## tagを消去
tag @s remove champagne.shaking