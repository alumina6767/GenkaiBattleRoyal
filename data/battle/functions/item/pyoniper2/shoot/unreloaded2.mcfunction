#> battle:item/pyoniper2/shoot/unreloaded2
# 空撃ちしたユーザーのアイテムを戻す
# @internal

loot replace entity @a[tag=pyoniper2.unreload_shot] weapon.mainhand loot battle:pyoniper2/pyoniper2
tag @a[tag=pyoniper2.unreload_shot] remove pyoniper2.unreload_shot