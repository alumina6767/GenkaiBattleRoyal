#> battle:item/champagne/kill_slime2
# kill
# @internal

#>
# @private
    #declare score_holder kill killすべきなら1

scoreboard players set kill _ 1

## uuid3でスライムを検索
scoreboard players operation _ _ = @s uuid3
execute as @a[tag=champagne.shaking,distance=..10] if score @s uuid3 = _ _ run tag @s add target

## スニークしている召喚主がいない場合
execute as @a[tag=target,predicate=share:is_sneak,limit=1,scores={main_hand=670040}] run scoreboard players set kill _ 0

## kill
execute if score kill _ matches 1 run tp ~ -200 ~

## tagを消去
execute if score kill _ matches 1 run tag @a[tag=target] remove champagne.shaking
tag @a[tag=target] remove target

## スコアホルダーの削除
scoreboard players reset kill _