#> battle:item/pyoniper2/swap_offhand
# オフハンドに持ったときに戻す
# @internal
# @within share:inventory_changed

## オフハンドとスワップ
execute if data storage tmp Inventory.[{Slot:-106b, tag:{CustomModelData:670080}}] run function share:swap_main_off
execute if data storage tmp Inventory.[{Slot:-106b, tag:{CustomModelData:670090}}] run function share:swap_main_off