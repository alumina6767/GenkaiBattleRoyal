#> battle:item/pyoniper2/shoot/unreloaded
# リロードされていないのに使用しようとした時
# @internal

#>
# @internal
    #declare tag pyoniper2.unreload_shot 空撃ちしたプレイヤー

## メッセージ
function battle:message/unreload

## 同tickだとクロスボウの置き換えとだぶるのでずらす
tag @s add pyoniper2.unreload_shot
schedule function battle:item/pyoniper2/shoot/unreloaded2 1t append
