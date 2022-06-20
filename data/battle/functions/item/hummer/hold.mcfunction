#> battle:item/hummer/hold
# メインハンドに持っている時
# @internal

#>
# @internal
    #declare tag hummer.hold ハンマーを手に持っている

## ジャンプ力上昇を与える
effect give @s jump_boost 10000 1 false

## タグをつける
tag @s add hummer.hold
