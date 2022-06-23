#> battle:item/gutitubo/if
# 使用判定
# @within right_click:**

execute if entity @s[scores={main_hand=670030}] unless entity @s[scores={tori.use_cd=1..}] run function battle:item/gutitubo/then
