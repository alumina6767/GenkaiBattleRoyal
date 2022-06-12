#> battle:item/gutitubo/tick/2
# as armor_stand
# @internal

## スコアをデクリメント
scoreboard players remove @s battle 1

## 前進
tp ^ ^ ^2.0

## 見える情報を変更することで 表示座標の修正
execute store result entity @s Color int 1 run scoreboard players get @s battle

## 消去
tp @s[scores={battle=..0}] ~ -200 ~
