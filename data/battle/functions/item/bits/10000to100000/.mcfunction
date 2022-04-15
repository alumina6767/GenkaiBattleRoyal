#> battle:item/bits/10000to100000/
# 10000から100000へ
# @internal

#>
# @within battle:item/bits/10000to100000/**
    #declare score_holder count 元の個数
    #declare score_holder _ 繰り上げ分の個数

## メインハンドとオフハンドをスワップ
function share:swap_main_off

## 個数を取得
execute store result score count tmp run data get entity @s SelectedItem.Count 1

## 繰り上げる個数を取得
scoreboard players operation _ _ = count tmp
scoreboard players operation _ _ /= 10 const

## 繰り上げて個数を代入
loot replace entity @s weapon.mainhand loot battle:bits/100000
item modify entity @s weapon.mainhand share:score2count

## 端数の個数を取得
scoreboard players operation count tmp %= 10 const

## 端数分を渡す
execute if score count tmp matches 1.. run function battle:item/bits/10000to100000/summon

## 音
playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 5.0 1.5 1.0
playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 5.0 0.5 1.0

## パーティクル
execute anchored eyes run particle dust 1 1 1 1 ^ ^ ^1 1.0 1.0 1.0 1.0 20 normal @s

## アクションバー
title @s reset
title @s times 5 30 5
title @s subtitle "より高額なbitsに変換した！"
title @s title ""

## 進捗のリセット
advancement revoke @s only battle:bits/10000to100000