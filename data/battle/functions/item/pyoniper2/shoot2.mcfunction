#> battle:item/pyoniper2/shoot2
# アイテムの置き換え
# @internal

#>
# @internal
    #declare tag pyoniper2.shot 発砲したてのプレイヤー

loot replace entity @a[tag=pyoniper2.shot] weapon loot battle:pyoniper2/reloading

## タグの消去
tag @a[tag=pyoniper2.shot] remove pyoniper2.shot