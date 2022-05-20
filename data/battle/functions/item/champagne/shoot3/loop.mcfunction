#> battle:item/champagne/shoot3/loop
# tp式 拡散弾
# @internal

## 発射
execute as @a[tag=champagne.firing_high] run function battle:item/champagne/shoot3/timer 

## ループ
execute if entity @a[tag=champagne.firing_high,scores={champagne.bullets=1..},limit=1] run schedule function battle:item/champagne/shoot3/loop 1t append