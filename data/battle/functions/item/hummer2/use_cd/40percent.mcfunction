#> battle:item/hummer2/use_cd/40percent
# クールダウン率40%の表示にする
# @internal

## 変更アイテムの指定
data modify storage player_item_tuner: condition.if set value {id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:670130}}

## 変更内容の指定
data modify storage player_item_tuner: result.merge set value {tag:{Damage:60}}

## 変更
function #player_item_tuner:merge/inventory