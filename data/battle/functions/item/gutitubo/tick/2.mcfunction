#> battle:item/gutitubo/tick/2
# as armor_stand
# @internal

## スコアをデクリメント
scoreboard players remove @s battle 1

## 前進
tp ^ ^ ^2.0

## 消去
tp @s[scores={battle=..0}] ~ -200 ~
