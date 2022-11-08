

## 移動コストの消費
scoreboard players remove @s raycast 1

#えふぇくと
execute as @s at @s run particle crit ~ ~ ~ 0 0 0 0 1

## 発射主情報
scoreboard players operation _ battle.team = @s battle.team

execute positioned ~-0.25 ~-0.25 ~-0.25 as @e[dx=0] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[type=!marker,dx=0] run function battle:item/gun_eva/found_entity

#function battle:item/gun_eva/found_entity

## 中途半端なブロックの判定
execute if block ~ ~ ~ #raycast:partial run function raycast:partial

## フルブロックの時 探索を終了
execute unless block ~ ~ ~ #raycast:air run scoreboard players set @s raycast 0

## 弾丸の前進
execute if score @s raycast matches 2.. run tp ^ ^ ^0.25

## 前進して探索を継続
execute if score @s raycast matches 2.. at @s run function battle:item/gun_eva/move

execute if score @s raycast matches ..1 run kill @s













