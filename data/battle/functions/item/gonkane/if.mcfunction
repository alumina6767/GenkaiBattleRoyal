#> battle:item/gonkane/if
#
# @within right_click:**


## ガチャを開ける
execute if entity @s[scores={main_hand=670020,main_hand.hold_time=10..}] run function battle:item/gonkane/open

## カチューシャをかぶる
execute if entity @s[scores={main_hand=670021,main_hand.hold_time=10..}] run function battle:item/gonkane/wear
