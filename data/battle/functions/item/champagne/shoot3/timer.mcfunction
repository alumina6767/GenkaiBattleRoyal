#> battle:item/champagne/shoot3/timer
# timer
# @internal

## 発射間隔を調整
# scoreboard players operation _ _ = @s champagne.bullets
# scoreboard players operation _ _ %= 2 const

## 発射
# execute if score _ _ matches 0 at @s anchored eyes positioned ^ ^ ^ run function battle:item/champagne/shoot3/shoot
execute at @s anchored eyes positioned ^ ^ ^ run function battle:item/champagne/shoot3/shoot

## 弾丸消費
scoreboard players remove @s champagne.bullets 1

## tick処理を開始
schedule function battle:item/champagne/shoot3/tick 1t append
