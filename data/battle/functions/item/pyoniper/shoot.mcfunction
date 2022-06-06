#> battle:item/pyoniper/shoot
# 発砲する
# @internal

#>
# @internal
    #declare tag pyoniper.reloading
    #declare tag pyoniper.bullet

## オフハンドとスワップする
function share:swap_main_off

## 音
playsound entity.egg.throw player @a ~ ~ ~ 1.0 1.0 0.0

## 弾を召喚
summon armor_stand ~ ~ ~ {Tags:["new","pyoniper.bullet","barrier.blockable"],Small:1b,Marker:1b,Invisible:1b,Silent:1b}

## 射程距離を設定
scoreboard players set @e[type=armor_stand,tag=new] pyoniper.time 10

## 発射主を登録
scoreboard players operation @e[type=armor_stand,tag=new] uuid3 = @s uuid3

## チームを登録
scoreboard players operation @e[type=armor_stand,tag=new] battle.team = @s battle.team

## 向きを指定
tp @e[type=armor_stand,tag=new] ^ ^ ^0.01 ~ ~

## タグを削除
tag @e[type=armor_stand,tag=new] remove new

## リロード時間を設定
scoreboard players set @s pyoniper.reload 100

## アイテムの置き換え
loot replace entity @s weapon loot battle:pyoniper/reloading

## プレイヤーにリロード中タグをつける
#tag @s add pyoniper.reloading

## リロード処理
schedule function battle:item/pyoniper/reload_tick 1t append

## 弾道処理
schedule function battle:item/pyoniper/tick 1t append