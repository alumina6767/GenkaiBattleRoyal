#> battle:item/hummer/if
# アイテムの使用判定
# @internal
# @within right_click:wfs

execute if entity @s[scores={main_hand=670120}] unless entity @s[scores={hummer.dash=1..}] at @s run function battle:item/hummer/use