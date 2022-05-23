#> battle:item/umeneri/then
# @internal

#>
# @internal
    #declare tag tarako
    #declare tag level1
    #declare tag level2
    #declare tag level3
    #declare tag level4
# @within battle:item/umenri/**
    #declare tag target
    #declare tag umeneri_interval

tag @s add target

## 同じチームの近くのたらこにタグ付け
scoreboard players operation _ battle.team = @s battle.team
execute positioned ^ ^ ^1.0 run tag @e[type=silverfish,tag=tarako,distance=..5,sort=nearest,predicate=battle:same_team,limit=1] add target
scoreboard players reset _ battle.team

## たらこが近くにいなかったとき
execute unless entity @e[type=silverfish,tag=target] run function battle:item/umeneri/far

## レベルアップ
execute as @e[type=silverfish,tag=target,tag=level4] at @s run function battle:item/umeneri/overlevel
execute as @e[type=silverfish,tag=target,tag=level3] at @s run function battle:item/umeneri/tolevel4
execute as @e[type=silverfish,tag=target,tag=level2] at @s run function battle:item/umeneri/tolevel3
execute as @e[type=silverfish,tag=target,tag=level1] at @s run function battle:item/umeneri/tolevel2

## アイテムを消費
execute if entity @e[type=silverfish,tag=target] run function share:remove_mainhand

## インターバル
execute if entity @e[type=silverfish,tag=target] run scoreboard players set @s interval.umeneri 10

## タグを消去
tag @e[type=silverfish,tag=target] remove target
tag @s remove target