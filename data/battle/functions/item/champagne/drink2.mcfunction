#> battle:item/champagne/drink2
# 空の瓶を消す
# @internal

## 空の瓶を消す
clear @a[tag=champagne.drunk] glass_bottle 1

## タグを消去
tag @a[tag=champagne.drunk] remove champagne.drunk
