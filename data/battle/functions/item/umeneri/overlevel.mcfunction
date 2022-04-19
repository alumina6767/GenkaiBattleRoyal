#> battle:item/umeneri/overlevel
# レベルが上限であることを通知
# @internal

## メッセージ
execute as @a[tag=target] run function battle:title_reset
title @a[tag=target] subtitle "これ以上このたらこは強くなれない！！"

## アイテムを消費しないようにタグを消去
tag @s remove target