#> battle:item/champagne/shoot2/loop
# tp式 拡散弾
# @internal

## 発射
execute as @a[tag=champagne.firing_normal,scores={champagne.bullets=1..}] if predicate battle:chance/0.8 run function battle:item/champagne/shoot2/timer 

## 弾丸が尽きたらリセット
scoreboard players reset @a[tag=champagne.firing_normal,scores={champagne.bullets=0}] champagne.power
scoreboard players reset @a[tag=champagne.firing_normal,scores={champagne.bullets=0}] champagne.bullets

## ループ
execute if entity @a[tag=champagne.firing_normal,scores={champagne.bullets=1..},limit=1] run schedule function battle:item/champagne/shoot2/loop 1t append