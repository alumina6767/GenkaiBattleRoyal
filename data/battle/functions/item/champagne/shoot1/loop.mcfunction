#> battle:item/champagne/shoot1/loop
# tp式 拡散弾
# @internal

## 発射
execute as @a[tag=champagne.firing_low] if predicate battle:chance/0.5 run function battle:item/champagne/shoot1/timer 

## ループ
execute if entity @a[tag=champagne.firing_low,scores={champagne.bullets=1..},limit=1] run schedule function battle:item/champagne/shoot1/loop 1t append