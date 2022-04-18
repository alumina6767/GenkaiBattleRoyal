#> battle:item/umeneri/overlevel
# レベルが上限であることを通知
# @internal

tellraw @a[tag=target] "これ以上このたらこは強くなれない！！"

## アイテムを消費しないようにタグを消去
tag @s remove target