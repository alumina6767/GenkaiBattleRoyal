#> battle:item/pyoniper/if
# 発砲するかどうか
# @internal
# @within share:inventory_changed

## オフハンドの判定
execute if entity @s[scores={pyoniper.reload=0..}] if data storage tmp Inventory.[{Slot:-106b, tag:{CustomModelData:670070}}] run function share:swap_main_off
execute unless entity @s[scores={pyoniper.reload=0..}] if data storage tmp Inventory.[{Slot:-106b, tag:{CustomModelData:670060}}] anchored eyes run function battle:item/pyoniper/shoot/