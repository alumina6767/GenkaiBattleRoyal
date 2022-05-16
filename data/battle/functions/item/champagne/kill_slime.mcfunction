#> battle:item/champagne/kill_slime
# スライムを消す
# @internal

## 前tick振っていたが、今はスニークしていない時スライムを削除
execute as @a[tag=champagne.shaking,predicate=!share:is_sneak] at @s run function battle:item/champagne/kill_slime2
