#> battle:item/champagne/shoot3/tick2
# as bullet
# @internal

#region 古い
# scoreboard players operation .itt raycast = @s champagne.time

# execute if score @s champagne.time matches ..58 run particle crit ~ ~ ~ 0 0 0 0 1

# execute if block ~ ~ ~ #raycast:partial run function raycast:partial

# scoreboard players remove .itt raycast 1

# scoreboard players operation @s champagne.time = .itt raycast

# execute if score @s champagne.time matches 1.. if block ~ ~ ~ #raycast:air run tp ^ ^ ^0.25
# execute if score @s champagne.time matches 1.. unless block ~ ~ ~ #raycast:air run scoreboard players set @s champagne.time 0
#endregion

## チームIDを取得
scoreboard players operation _ battle.team = @s battle.team

## 発射主を取得
scoreboard players operation _ uuid3 = @s uuid3

## 探索の回数を指定
scoreboard players set .itt raycast 21

## 衝突の探索
function battle:item/champagne/shoot3/raycast

## 壁に当たった時
execute if score .itt raycast matches 0 run scoreboard players set @s champagne.time 0

## エンティティに当たった時
execute if score .itt raycast matches -1 run function battle:item/champagne/shoot3/hit_entity

## 持続時間を減らす
scoreboard players remove @s champagne.time 1

## 残存時間が0なら消す
kill @s[scores={champagne.time=..0}]