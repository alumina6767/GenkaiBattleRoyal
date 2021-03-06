#> battle:item/gutitubo/tick/
# tick処理
# @internal

#>
# @internal
    #declare tag battle.tori

## 防具立ての処理
execute as @e[type=area_effect_cloud,tag=battle.tori] at @s rotated ~ 0 run function battle:item/gutitubo/tick/2

## ぐちつぼの処理
execute as @e[type=armor_stand,tag=battle.gutitubo] at @s run function battle:item/gutitubo/tick/gutitubo

## ぐちつぼの体の処理 効果が終了したら体を消す
scoreboard players add @e[type=armor_stand,tag=battle.gutitubo.body] battle 1
kill @e[type=armor_stand,tag=battle.gutitubo.body,scores={battle=250}]

## スライムの処理
execute as @e[type=slime,tag=battle.tori] at @s run function battle:item/gutitubo/tick/3

## ループ継続判定
execute if entity @e[type=armor_stand,tag=battle.gutitubo,limit=1] run schedule function battle:item/gutitubo/tick/ 1t append