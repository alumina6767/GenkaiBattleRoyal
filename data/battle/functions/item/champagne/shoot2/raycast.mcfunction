#> battle:item/champagne/shoot2/raycast
# raycast
# @internal

## パーティクル 最初は見づらいのでなし
execute as @s[tag=!champagne.bullet.first] run particle crit ~ ~ ~ 0.1 0.1 0.1 0 3 force

## 1回目の処理を終了
execute if predicate battle:chance/0.5 run tag @s[tag=champagne.bullet.first] remove champagne.bullet.first

## 移動コストの消費
scoreboard players remove .itt raycast 1

## 中途半端なブロックの判定
execute if block ~ ~ ~ #raycast:partial run function raycast:partial

## フルブロックの時 探索を終了
execute unless block ~ ~ ~ #raycast:air run scoreboard players set .itt raycast 0

## エンティティの探索
execute positioned ~-0.2 ~-0.2 ~-0.2 as @e[dx=0] positioned ~-0.4 ~-0.4 ~-0.4 if entity @s[dx=0] unless score @s uuid3 = _ uuid3 run function battle:item/champagne/found_entity

## 前進して探索を継続
execute if score .itt raycast matches 2.. positioned ^ ^ ^0.25 run function battle:item/champagne/shoot2/raycast