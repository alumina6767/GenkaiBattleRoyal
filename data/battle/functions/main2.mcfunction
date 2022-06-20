#> battle:main2
# as player
# @internal

## プレイヤーデータを保存する
function right_click:store_cmd

#region プレイヤーデータを使った処理

## ハンマー
### 今手に持っていない時エフェクトをクリア
execute if entity @s[tag=hummer.hold] unless entity @s[scores={main_hand=670120}] run function battle:item/hummer/unhold
### 手に持っているときエフェクト
execute if entity @s[tag=!hummer.hold,scores={main_hand=670120}] run function battle:item/hummer/hold

#endregion
