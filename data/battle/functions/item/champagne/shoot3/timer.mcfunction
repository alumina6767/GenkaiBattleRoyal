#> battle:item/champagne/shoot3/timer
# timer
# @internal

## 最初にパーティクル
execute at @s[scores={champagne.bullets=60}] run particle dust 0.369 0.922 0.09 2 ~ ~1.0 ~ 1.0 0.5 1.0 1 30 force
execute at @s[scores={champagne.bullets=60}] run particle end_rod ~ ~1.0 ~ 1 0.1 1 0.3 80 force

## 発射
execute at @s[scores={champagne.bullets=..56}] anchored eyes positioned ^ ^ ^ run function battle:item/champagne/shoot3/shoot

## 弾丸消費
scoreboard players remove @s champagne.bullets 1

## tick処理を開始
schedule function battle:item/champagne/shoot3/tick 1t append

## 弾丸が尽きたら終了
execute unless entity @s[scores={champagne.bullets=1..}] run function battle:item/champagne/shoot3/end
