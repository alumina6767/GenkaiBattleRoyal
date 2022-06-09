#> battle:item/pyoniper2/bullet/found_entity
# エンティティが見つかったとき
# @internal

#>
# @private
    #declare score_holder is_same_team

## 同じチームかどうか
execute store result score is_same_team _ if predicate battle:same_team

## エンティティとの衝突情報を保存
execute if score is_same_team _ matches 0 run scoreboard players set .itt raycast -1

## 同じチームでない時ダメージ処理
### 与えたいダメージを設定 (小数点2桁まで有効)
execute if score is_same_team _ matches 0 run data modify storage score_damage: Argument set value {Damage:5.50}
### 対象を実行者にしてfunctionを実行
execute if score is_same_team _ matches 0 run function score_damage:api/attack

## ダメージソース情報を保存
execute if score is_same_team _ matches 0 run scoreboard players operation @s battle.hurt_by = _ uuid3
execute if score is_same_team _ matches 0 run scoreboard players set @s battle.hurt_with 670080

## スコアの削除
scoreboard players reset is_same_team _