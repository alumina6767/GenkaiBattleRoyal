#> battle:item/pyoniper2/tick_bullet2
# 弾丸処理 as 弾丸
# @internal

## チームIDを取得
scoreboard players operation _ battle.team = @s battle.team

## 発射主を取得
scoreboard players operation _ uuid3 = @s uuid3

## 探索の回数を指定
scoreboard players set .itt raycast 21

## 衝突の探索
function battle:item/pyoniper2/raycast

## 壁に当たった時
execute if score .itt raycast matches 0 run scoreboard players set @s pyoniper2.time 0

## エンティティに当たった時
execute if score .itt raycast matches -1 run function battle:item/pyoniper2/hit_entity

## 壁もエンティティもなかった時
execute if score .itt raycast matches 1 run tp ^ ^ ^5.0

## 持続時間を減らす
scoreboard players remove @s pyoniper2.time 1

## 残存時間が0なら消す
kill @s[scores={pyoniper2.time=..0}]