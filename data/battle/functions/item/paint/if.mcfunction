#> battle:item/paint/if
# アイテムの使用判定
# @internal
# @within right_click:eye

execute if entity @s[scores={main_hand=670110}] unless entity @s[scores={cool_down.paint=1..}] anchored eyes run function battle:item/paint/then