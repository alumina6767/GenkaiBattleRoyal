#> battle:item/jump_pad_small/
# ジャンプパッド
# @internal

## メインハンドとオフハンドをスワップ
function share:swap_main_off

## ジャンプパッド
execute rotated ~ 0 positioned ^ ^ ^1 run summon falling_block ~ ~-0.8 ~ {BlockState:{Name:"minecraft:slime_block"},NoGravity:1b,Time:-10000000,DropItem:false,Tags:["new","jump_pad_small"]}

## 消滅までの時間を設定
scoreboard players set @e[type=falling_block,tag=new] battle 600

## 音
playsound block.metal_pressure_plate.click_on player @a ~ ~ ~ 1 1 0

## タグを消す
tag @e[type=falling_block,tag=new] remove new

## 進捗をリセット
advancement revoke @s only battle:item/jump_pad