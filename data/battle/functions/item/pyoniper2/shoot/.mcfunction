#> battle:item/pyoniper2/shoot/
# 発砲する
# @internal

## 弾を召喚 ボスが撃ったものはバリアで防げない
execute as @s[tag=!battle.boss] anchored eyes run summon armor_stand ^ ^ ^ {Tags:["new","pyoniper2.bullet","barrier.blockable"],Small:1b,Marker:1b,Invisible:1b,Silent:1b,CustomName:'{"text":"invisible"}'}
execute as @s[tag=battle.boss] anchored eyes run summon armor_stand ^ ^ ^ {Tags:["new","pyoniper2.bullet"],Small:1b,Marker:1b,Invisible:1b,Silent:1b,CustomName:'{"text":"invisible"}'}
execute anchored eyes run tp @e[type=armor_stand,tag=new] ^ ^ ^0.01 ~ ~

## 代入するスコアを確保
scoreboard players operation _ uuid3 = @s uuid3
scoreboard players operation _ battle.team = @s battle.team

## 発砲処理
execute as @e[type=armor_stand,tag=new] run function battle:item/pyoniper2/shoot/2

## アイテムの置き換え クロスボウ自体の置き換えと被って実行されないからずらす
tag @s add pyoniper2.shot
schedule function battle:item/pyoniper2/shoot/3 1t append

## 弾道処理
schedule function battle:item/pyoniper2/bullet/tick 1t append

## リロード時間を設定
scoreboard players add @s pyoniper2.reload 100

## リロード処理
schedule function battle:item/pyoniper2/reload/tick 1t append
