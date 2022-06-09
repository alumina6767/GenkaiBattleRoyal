#> battle:item/pyoniper2/reload/end
# リロードの終了
# @internal

## アイテムのスロットを取得
data modify storage tmp target_slots set value []
data modify storage tmp target_slots append from entity @s Inventory.[{tag:{CustomModelData:670090}}].Slot

## すべてのスロットのアイテムを置換
execute if data storage tmp target_slots[-1] run function battle:item/pyoniper2/reload/end2

## ストレージの削除
data remove storage tmp target_slots

## リロード完了音
playsound item.crossbow.loading_end player @s ~ ~ ~ 2 0.5 0

## すべてのリロードが終了したらスコアのリセット
scoreboard players reset @s pyoniper2.reload