#> battle:item/pyoniper2/shoot/4
# リロード中のアイテムに置換
# @internal

## インベントリの監視を停止
scoreboard players set @s check_inventory 0

## アイテムのスロットを取得
data modify storage tmp target_slots set value []
data modify storage tmp target_slots append from entity @s Inventory.[{tag:{CustomModelData:670080}}].Slot

## すべてのスロットのアイテムを置換
execute if data storage tmp target_slots[-1] run function battle:item/pyoniper2/shoot/5

## ストレージの削除
data remove storage tmp target_slots

## インベントリの監視を再開
scoreboard players set @s check_inventory 1
