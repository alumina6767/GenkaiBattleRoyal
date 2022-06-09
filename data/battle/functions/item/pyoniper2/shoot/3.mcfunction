#> battle:item/pyoniper2/shoot/3
# アイテムの置き換え
# @internal

#>
# @internal
    #declare tag pyoniper2.shot 発砲したてのプレイヤー

## リロード中のアイテムに置換
execute as @a[tag=pyoniper2.shot] run function battle:item/pyoniper2/shoot/4

## タグの消去
tag @a[tag=pyoniper2.shot] remove pyoniper2.shot
