#> battle:item/hummer2/use
# アイテムの使用
# @internal

#> 
# @internal
    #declare tag hummer2 ハンマー関連
    #declare tag hummer2.dummy ハンマーを回転させる
    #declare tag hummer2.body 乗り移る人形
# @private
    #declare tag hummer2.target

## 実行主にタグ付け
tag @s add hummer2.target

## スペクテイターに
gamemode spectator @s

## ハンマー
# execute if entity @s[y_rotation=-44..45] run summon armor_stand ~ ~ ~ {Tags:["hummer2.dummy","new"],Silent:1b,Rotation:[0f,0f]}
# execute if entity @s[y_rotation=46..135] run summon armor_stand ~ ~ ~ {Tags:["hummer2.dummy","new"],Silent:1b,Rotation:[90f,0f]}
# execute unless entity @s[y_rotation=-136..135] run summon armor_stand ~ ~ ~ {Tags:["hummer2.dummy","new"],Silent:1b,Rotation:[180f,0f]}
# execute if entity @s[y_rotation=-136..-45] run summon armor_stand ~ ~ ~ {Tags:["hummer2.dummy","new"],Silent:1b,Rotation:[270f,0f]}

## 乗り移る人形
summon armor_stand ~ ~ ~ {Invisible:1b,Silent:1b,Tags:["hummer2","hummer2.dummy","new","battle.invulnerable"],Passengers:[{id:"area_effect_cloud",Duration:61,Tags:["hummer2","hummer2.body","new"]}],CustomName:'{"text":"invisible"}'}
#execute if entity @s[y_rotation=46..135] run summon armor_stand ~ ~ ~ {Invisible:1b,Silent:1b,Tags:["hummer2","hummer2.dummy","new","battle.invulnerable"],Passengers:[{id:"area_effect_cloud",Duration:61,Tags:["hummer2","hummer2.body","new"]}],CustomName:'{"text":"invisible"}'}
#execute unless entity @s[y_rotation=-136..135] run summon armor_stand ~ ~ ~ {Invisible:1b,Silent:1b,Tags:["hummer2","hummer2.dummy","new","battle.invulnerable"],Passengers:[{id:"area_effect_cloud",Duration:61,Tags:["hummer2","hummer2.body","new"]}],CustomName:'{"text":"invisible"}'}
#execute if entity @s[y_rotation=-136..-45] run summon armor_stand ~ ~ ~ {Invisible:1b,Silent:1b,Tags:["hummer2","hummer2.dummy","new","battle.invulnerable"],Passengers:[{id:"area_effect_cloud",Duration:61,Tags:["hummer2","hummer2.body","new"]}],CustomName:'{"text":"invisible"}'}

## バリアできるかの指定
execute if entity @s[tag=!battle.boss] run tag @e[type=armor_stand,tag=new,tag=hummer2.dummy] add barrier.blockable

## 向きの指定
#data modify entity @e[type=armor_stand,tag=new,tag=hummer2.body,limit=1] Rotation set from entity @s Rotation

## 進行の向きの指定
execute anchored eyes positioned 0.0 0.0 0.0 positioned ^ ^ ^0.05 run function share:get_pos

## スコアの保存
scoreboard players operation _ battle.team = @s battle.team
scoreboard players operation _ uuid3 = @s uuid3

## 人形として実行
execute as @e[type=armor_stand,tag=new,tag=hummer2.dummy] run function battle:item/hummer2/use2
execute as @e[type=area_effect_cloud,tag=new,tag=hummer2.body] run function battle:item/hummer2/use3

## ダッシュ時間の設定
scoreboard players set @s hummer2.dash 60

## ループ関数
schedule function battle:item/hummer2/dash 1t append

## タグの消去
tag @s remove hummer2.target
tag @e[type=armor_stand,tag=new] remove new
tag @e[type=area_effect_cloud,tag=new] remove new

## 音
playsound block.anvil.land neutral @a ~ ~ ~ 1.0 1.5 0.0
playsound block.beacon.power_select neutral @a ~ ~ ~ 1.0 2.0 0.0
