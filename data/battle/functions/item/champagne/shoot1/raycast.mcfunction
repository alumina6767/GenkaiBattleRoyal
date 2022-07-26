#> battle:item/champagne/shoot1/raycast
# raycast
# @internal

## パーティクル 最初は見づらいのでなし
execute as @s[tag=!champagne.bullet.first] run particle crit ~ ~ ~ 0 0 0 0 1 force

## 1回目の処理を終了
execute if predicate battle:chance/0.1 run tag @s[tag=champagne.bullet.first] remove champagne.bullet.first

## 移動コストの消費
scoreboard players remove .itt raycast 1

## ボスのバリア判定
execute if entity @s[tag=barrier.blockable] if entity @a[tag=barrier.effect,predicate=!battle:same_team,distance=..3.5,limit=1] run scoreboard players set .itt raycast 0
execute if entity @s[tag=barrier.blockable] as @a[tag=barrier.effect,predicate=!battle:same_team,distance=..3.5] at @s run function battle:effect/barrier/

## 中途半端なブロックの判定
execute if block ~ ~ ~ #raycast:partial run function raycast:partial

## フルブロックの時 探索を終了
execute unless block ~ ~ ~ #raycast:air run scoreboard players set .itt raycast 0

## エンティティの探索
execute positioned ~-0.1 ~-0.1 ~-0.1 as @e[predicate=battle:can_take_damage,dx=0] positioned ~-0.2 ~-0.2 ~-0.2 if entity @s[dx=0] run function battle:item/champagne/found_entity

## 弾丸を前進させる
execute if score .itt raycast matches 2.. run tp ^ ^ ^0.25

## 前進して探索を継続
execute if score .itt raycast matches 2.. positioned ^ ^ ^0.25 run function battle:item/champagne/shoot1/raycast