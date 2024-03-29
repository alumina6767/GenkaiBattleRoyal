#> battle:item/jump_pad_small_2/
# ジャンプパッド
# @internal

## 数を減らす
function share:remove_mainhand

## アイテム使用のインターバルの設定
scoreboard players add @s interval.jump_pad 4

## インターバル減少用のtickの開始
schedule function battle:item/jump_pad_small_2/tick 1t append

## ジャンプパッド
execute rotated ~ ~ positioned ^ ^ ^1 run summon falling_block ~ ~-0.3 ~ {BlockState:{Name:"minecraft:big_dripleaf",Properties:{facing:"east",tilt:"unstable"}},NoGravity:1b,Time:300,DropItem:false,Tags:["new","jpad_s2"]}

## 音
function battle:item/jump_pad_small_2/sound

## パーティクル
execute at @e[type=falling_block,tag=new] run particle end_rod ~ ~1 ~ 1 1 1 0.01 30 normal

## タグを消す
tag @e[type=falling_block,tag=new] remove new
