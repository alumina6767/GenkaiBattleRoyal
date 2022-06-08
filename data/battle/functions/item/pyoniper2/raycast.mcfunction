#> battle:item/pyoniper2/raycast
# 衝突処理 as 弾丸
# @internal

## パーティクル
particle dust 1 0.769 0.984 1.5 ~ ~ ~ 0.01 0.01 0.01 0 1 force
particle dust 0.953 0.878 0.953 1 ~ ~ ~ 0.02 0.02 0.02 0 1 force
execute if predicate battle:chance/0.2 run particle end_rod ~ ~ ~ 0.0 0.0 0.0 0.2 1 force

## 移動コストの消費
scoreboard players remove .itt raycast 1

## 中途半端なブロックの判定
execute if block ~ ~ ~ #raycast:partial run function raycast:partial

## フルブロックの時 探索を終了
execute unless block ~ ~ ~ #raycast:air run scoreboard players set .itt raycast 0

## エンティティの探索
execute positioned ~-0.25 ~-0.25 ~-0.25 as @e[dx=0] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[predicate=battle:can_take_damage,dx=0] run function battle:item/pyoniper2/found_entity

## 前進して探索を継続
execute if score .itt raycast matches 2.. positioned ^ ^ ^0.25 run function battle:item/pyoniper2/raycast