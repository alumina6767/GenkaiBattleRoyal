#> battle:item/pyoniper2/bullet/tick2
# 弾丸処理 as 弾丸
# @internal

## 弾道音
execute if predicate battle:chance/0.5 run playsound minecraft:block.respawn_anchor.deplete neutral @a ~ ~ ~ 0.5 1.0 0

## チームIDを取得
scoreboard players operation _ battle.team = @s battle.team

## 発射主を取得
scoreboard players operation _ uuid3 = @s uuid3

## 探索の回数を指定
scoreboard players set .itt raycast 21

## 衝突の探索
function battle:item/pyoniper2/bullet/raycast

## 壁に当たった時
execute if score .itt raycast matches 0 run scoreboard players set @s pyoniper2.time 0

## エンティティに当たった時
execute if score .itt raycast matches -1 run function battle:item/pyoniper2/bullet/hit_entity

## 壁もエンティティもなかった時
#execute if score .itt raycast matches 1 run tp ^ ^ ^5.0

## 持続時間を減らす
scoreboard players remove @s pyoniper2.time 1

## 残存時間が0なら音を鳴らして消す
execute if entity @s[scores={pyoniper2.time=..0}] run playsound entity.iron_golem.hurt neutral @a ~ ~ ~ 1 1
kill @s[scores={pyoniper2.time=..0}]