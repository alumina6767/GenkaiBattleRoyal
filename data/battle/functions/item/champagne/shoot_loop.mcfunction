#> battle:item/champagne/shoot_loop
# 弾を撃つ
# @internal

## 発射
execute as @a[scores={champagne.bullets=1..}] at @s run function battle:item/champagne/shoot_loop2

## 弾丸消費
scoreboard players remove @a[scores={champagne.bullets=1..}] champagne.bullets 1

## 弾丸が尽きたらリセット
scoreboard players reset @a[scores={champagne.bullets=0}] champagne.power
scoreboard players reset @a[scores={champagne.bullets=0}] champagne.bullets

## ループ
execute if entity @a[scores={champagne.bullets=1..},limit=1] run schedule function battle:item/champagne/shoot_loop 1t append