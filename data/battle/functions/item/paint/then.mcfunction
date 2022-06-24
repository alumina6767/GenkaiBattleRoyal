#> battle:item/paint/then
# アイテムの使用
# @internal

#> 
# @internal
    #declare tag paint.bullet 弾丸につける
    #declare tag paint.bullet.move 動いている弾丸

## アイテムの消費
function share:remove_mainhand

## 絵の生成
#summon item ~ ~ ~ {NoGravity:1b,Glowing:1b,Age:5900,PickupDelay:200,Tags:["new","paint.bullet","paint.bullet.move"],Item:{id:"minecraft:oak_boat",Count:1b}}
#summon armor_stand ~ ~ ~ {NoGravity:1b,Glowing:1b,Small:1b,Tags:["new","paint.bullet","paint.bullet.move"],Passengers:[{id:"minecraft:item",NoGravity:1b,Glowing:1b,Age:5900,PickupDelay:200,Passengers:[{id:"minecraft:allay"}],Item:{id:"minecraft:ice",Count:1b}}]}
summon armor_stand ^ ^ ^ {NoGravity:1b,Silent:1b,Small:1b,Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["new","paint.bullet","paint.bullet.move"],Passengers:[{id:"minecraft:item",NoGravity:1b,Glowing:1b,Age:5800,PickupDelay:2000,Item:{id:"minecraft:oak_boat",Count:1b}}]}

## スコアの準備
scoreboard players operation _ battle.team = @s battle.team
scoreboard players operation _ uuid3 = @s uuid3

## 実行主を変更
execute positioned ^ ^ ^ as @e[type=armor_stand,tag=new,distance=..2] run function battle:item/paint/then2

## スコアのリセット
scoreboard players reset _ battle.team
scoreboard players reset _ uuid3

## クールダウンの設定
scoreboard players set @s cool_down.paint 10

## クールダウンtick
schedule function battle:item/paint/tick_cool_down 1t append

## 弾道tick処理の開始
schedule function battle:item/paint/tick_paint 1t append