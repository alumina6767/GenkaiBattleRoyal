#> battle:item/pyoniper2/reload/20percent
# リロード率20%の表示にする
# @internal

## 変更アイテムの指定
data modify storage player_item_tuner: condition.if set value {tag:{CustomItemData:{pyoniper2:1b}}}

## 変更内容の指定
data modify storage player_item_tuner: result.merge set value {id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:670090,Damage:80}}

## 変更
function #player_item_tuner:modify/inventory
