#> battle:item/champagne/found_entity
# エンティティが見つかったとき
# @internal

## エンティティとの衝突情報を保存
scoreboard players set .itt raycast -1

## 同じチームでない時ダメージ処理
### 与えたいダメージを設定 (小数点2桁まで有効)
execute unless score @s uuid3 = _ uuid3 run data modify storage score_damage: Argument set value {Damage:2.00}
### 対象を実行者にしてfunctionを実行
execute unless score @s uuid3 = _ uuid3 run function score_damage:api/attack