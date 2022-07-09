#> battle:item/paint/then
# アイテムの使用
# @internal

#> 
# @internal
    #declare tag paint.bullet 弾丸につける
    #declare tag paint.bullet.move 動いている弾丸
# @private
    #declare score_holder rand 乱数
    #declare score_holder #4 4

## 音
playsound item.ink_sac.use neutral @a ~ ~ ~ 1 1 0
playsound item.bottle.fill neutral @a ~ ~ ~ 1 1 0
playsound item.dye.use neutral @a ~ ~ ~ 1 1 0
playsound ui.cartography_table.take_result master @a ~ ~ ~ 1 1 0
playsound ui.cartography_table.take_result master @a ~ ~ ~ 1 0.8 0

## アイテムの消費
function share:remove_mainhand

# region 絵の生成
## 乱数で出る絵を変更
function #math:random
execute store result score rand _ run data get storage math: out
scoreboard players set #4 _ 3
scoreboard players operation rand _ %= #4 _

## たらこ
execute if score rand _ matches 0 if entity @s[tag=battle.boss] run summon armor_stand ^ ^ ^ {NoGravity:1b,Silent:1b,Small:1b,Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["new","paint.bullet","paint.bullet.move","battle.invulnerable"],Passengers:[{id:"minecraft:item",NoGravity:1b,Glowing:1b,Age:5800,PickupDelay:2000,Tags:["new"],Item:{id:"minecraft:oak_boat",Count:1b,tag:{CustomModelData:670111}}}]}
execute if score rand _ matches 0 if entity @s[tag=!battle.boss] run summon armor_stand ^ ^ ^ {NoGravity:1b,Silent:1b,Small:1b,Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["new","paint.bullet","paint.bullet.move","barrier.blockable","battle.invulnerable"],Passengers:[{id:"minecraft:item",NoGravity:1b,Glowing:1b,Age:5800,PickupDelay:2000,Tags:["new"],Item:{id:"minecraft:oak_boat",Count:1b,tag:{CustomModelData:670111}}}]}
## ぐちつぼ
execute if score rand _ matches 1 if entity @s[tag=battle.boss] run summon armor_stand ^ ^ ^ {NoGravity:1b,Silent:1b,Small:1b,Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["new","paint.bullet","paint.bullet.move","battle.invulnerable"],Passengers:[{id:"minecraft:item",NoGravity:1b,Glowing:1b,Age:5800,PickupDelay:2000,Tags:["new"],Item:{id:"minecraft:oak_boat",Count:1b,tag:{CustomModelData:670112}}}]}
execute if score rand _ matches 1 if entity @s[tag=!battle.boss] run summon armor_stand ^ ^ ^ {NoGravity:1b,Silent:1b,Small:1b,Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["new","paint.bullet","paint.bullet.move","barrier.blockable","battle.invulnerable"],Passengers:[{id:"minecraft:item",NoGravity:1b,Glowing:1b,Age:5800,PickupDelay:2000,Tags:["new"],Item:{id:"minecraft:oak_boat",Count:1b,tag:{CustomModelData:670112}}}]}
## げんぴょん
execute if score rand _ matches 2 if entity @s[tag=battle.boss] run summon armor_stand ^ ^ ^ {NoGravity:1b,Silent:1b,Small:1b,Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["new","paint.bullet","paint.bullet.move","battle.invulnerable"],Passengers:[{id:"minecraft:item",NoGravity:1b,Glowing:1b,Age:5800,PickupDelay:2000,Tags:["new"],Item:{id:"minecraft:oak_boat",Count:1b,tag:{CustomModelData:670113}}}]}
execute if score rand _ matches 2 if entity @s[tag=!battle.boss] run summon armor_stand ^ ^ ^ {NoGravity:1b,Silent:1b,Small:1b,Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["new","paint.bullet","paint.bullet.move","barrier.blockable","battle.invulnerable"],Passengers:[{id:"minecraft:item",NoGravity:1b,Glowing:1b,Age:5800,PickupDelay:2000,Tags:["new"],Item:{id:"minecraft:oak_boat",Count:1b,tag:{CustomModelData:670113}}}]}

### スコアのリセット
scoreboard players reset #4 _
scoreboard players reset rand _
# end region

## スコアの準備
scoreboard players operation _ battle.team = @s battle.team
scoreboard players operation _ uuid3 = @s uuid3

## 実行主を変更
execute positioned ^ ^ ^ as @e[type=armor_stand,tag=new,distance=..2] run function battle:item/paint/then2

## チームの指定
scoreboard players operation @e[type=item,tag=new,distance=..2,limit=1] battle.team = _ battle.team
execute as @e[type=item,tag=new,distance=..2,limit=1] run function battle:id2team

## タグの削除
tag @e[type=item,tag=new,distance=..2,limit=1] remove new

## スコアのリセット
scoreboard players reset _ battle.team
scoreboard players reset _ uuid3

## クールダウンの設定
scoreboard players set @s cool_down.paint 10

## クールダウンtick
schedule function battle:item/paint/tick_cool_down 1t append

## 弾道tick処理の開始
schedule function battle:item/paint/tick_paint 1t append