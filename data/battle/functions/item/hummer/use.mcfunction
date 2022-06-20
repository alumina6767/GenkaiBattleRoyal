#> battle:item/hummer/use
# アイテムの使用
# @internal

#> 
# @internal
    #declare tag hummer.dummy 乗り移る人形
# @private
    #declare tag hummer.target

## 実行主にタグ付け
tag @s add hummer.target

## スペクテイターに
gamemode spectator @s

## 乗り移る人形
execute if entity @s[y_rotation=-44..45] run summon armor_stand ~ ~ ~ {Tags:["hummer.dummy","new"],Silent:1b,Rotation:[0f,0f]}
execute if entity @s[y_rotation=46..135] run summon armor_stand ~ ~ ~ {Tags:["hummer.dummy","new"],Silent:1b,Rotation:[90f,0f]}
execute unless entity @s[y_rotation=-136..135] run summon armor_stand ~ ~ ~ {Tags:["hummer.dummy","new"],Silent:1b,Rotation:[180f,0f]}
execute if entity @s[y_rotation=-136..-45] run summon armor_stand ~ ~ ~ {Tags:["hummer.dummy","new"],Silent:1b,Rotation:[270f,0f]}

## 向きの指定
data modify entity @e[type=armor_stand,tag=new,limit=1] Rotation set from entity @s Rotation

## 進行の向きの指定
execute anchored eyes positioned 0.0 0.0 0.0 positioned ^ ^ ^0.05 run function share:get_pos

## スコアの保存
scoreboard players operation _ battle.team = @s battle.team
scoreboard players operation _ uuid3 = @s uuid3

## 人形として実行
execute as @e[type=armor_stand,tag=new] run function battle:item/hummer/use2

## ダッシュ時間の設定
scoreboard players set @s hummer.dash 60

## ループ関数
schedule function battle:item/hummer/dash 1t append

## タグの消去
tag @s remove hummer.target

## 音
playsound block.anvil.land neutral @a ~ ~ ~ 1.0 1.5 0.0
playsound block.beacon.power_select neutral @a ~ ~ ~ 1.0 2.0 0.0