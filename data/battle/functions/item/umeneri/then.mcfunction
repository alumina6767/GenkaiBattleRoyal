#> battle:item/umeneri/then
# @internal

#>
# @internal
    #declare tag tarako
    #declare tag level1
    #declare tag level2
    #declare tag level3
    #declare tag level4
# @private
    #declare tag target

tag @s add target

## 同じチームの近くのたらこにタグ付け
execute if entity @s[team=A] positioned ^ ^ ^0.5 run tag @e[type=silverfish,tag=tarako,distance=..5,sort=nearest,limit=1,team=A] add target
execute if entity @s[team=B] positioned ^ ^ ^0.5 run tag @e[type=silverfish,tag=tarako,distance=..5,sort=nearest,limit=1,team=B] add target
execute if entity @s[team=C] positioned ^ ^ ^0.5 run tag @e[type=silverfish,tag=tarako,distance=..5,sort=nearest,limit=1,team=C] add target
execute if entity @s[team=D] positioned ^ ^ ^0.5 run tag @e[type=silverfish,tag=tarako,distance=..5,sort=nearest,limit=1,team=D] add target
execute if entity @s[team=E] positioned ^ ^ ^0.5 run tag @e[type=silverfish,tag=tarako,distance=..5,sort=nearest,limit=1,team=E] add target
execute if entity @s[team=F] positioned ^ ^ ^0.5 run tag @e[type=silverfish,tag=tarako,distance=..5,sort=nearest,limit=1,team=F] add target
execute if entity @s[team=G] positioned ^ ^ ^0.5 run tag @e[type=silverfish,tag=tarako,distance=..5,sort=nearest,limit=1,team=G] add target

## レベルアップ
execute as @e[type=silverfish,tag=target,tag=level4] run function battle:item/umeneri/overlevel
execute as @e[type=silverfish,tag=target,tag=level3] run function battle:item/umeneri/tolevel4
execute as @e[type=silverfish,tag=target,tag=level2] run function battle:item/umeneri/tolevel3
execute as @e[type=silverfish,tag=target,tag=level1] run function battle:item/umeneri/tolevel2

## アイテムを消費
execute if entity @e[type=silverfish,tag=target] run function battle:remove_mainhand

## タグを消去
tag @e[type=silverfish,tag=target] remove target
tag @s remove target