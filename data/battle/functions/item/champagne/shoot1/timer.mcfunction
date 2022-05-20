#> battle:item/champagne/shoot1/timer
# timer
# @internal

## 最初にパーティクル
execute at @s[scores={champagne.bullets=60}] run particle dust 0.957 0.522 0.086 1.5 ~ ~1.0 ~ 1.0 0.5 1.0 1 20 force
execute at @s[scores={champagne.bullets=60}] run particle end_rod ~ ~1.0 ~ 1 0.1 1 0.2 50 force

## 発射
execute at @s[scores={champagne.bullets=..56}] anchored eyes positioned ^ ^ ^ run function battle:item/champagne/shoot1/shoot

## 弾丸消費
scoreboard players remove @s champagne.bullets 1

## tick処理を開始
schedule function battle:item/champagne/shoot1/tick 1t append

## 弾丸が尽きたら終了
execute unless entity @s[scores={champagne.bullets=1..}] run function battle:item/champagne/shoot1/end
