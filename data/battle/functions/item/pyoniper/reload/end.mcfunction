#> battle:item/pyoniper/reload/end
# リロードの終了
# @internal

## アイテムのスロットを取得
data modify storage tmp target_slots set value []
data modify storage tmp target_slots append from entity @s Inventory.[{tag:{CustomModelData:670070}}].Slot

## すべてのスロットのアイテムを置換
execute if data storage tmp target_slots[-1] run function battle:item/pyoniper/reload/end2

## ストレージの削除
data remove storage tmp target_slots

## リロード完了音
function battle:sound/reload

## スコアのリセット
scoreboard players reset @s pyoniper.reload
