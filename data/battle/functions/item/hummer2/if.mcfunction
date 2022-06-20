#> battle:item/hummer2/if
# アイテムの使用判定
# @internal
# @within right_click:wfs

execute if entity @s[scores={main_hand=670130}] unless entity @s[scores={hummer2.dash=1..}] at @s run function battle:item/hummer2/use