#> battle:item/jump_pad_small_2/
# ジャンプパッド
# @internal

## メインハンドとオフハンドをスワップ
scoreboard players set check_inventory battle 0
function share:swap_main_off
scoreboard players set check_inventory battle 1

## ジャンプパッド
execute rotated ~ ~ positioned ^ ^ ^1 run summon falling_block ~ ~-0.3 ~ {BlockState:{Name:"minecraft:slime_block"},NoGravity:1b,Time:300,DropItem:false,Tags:["new","jump_pad_small2"]}

## 音
function battle:item/jump_pad_small_2/sound

## パーティクル
execute at @e[type=falling_block,tag=new] run particle end_rod ~ ~1 ~ 1 1 1 0.01 30 normal

## タグを消す
tag @e[type=falling_block,tag=new] remove new

## 進捗をリセット
advancement revoke @s only battle:item/jump_pad