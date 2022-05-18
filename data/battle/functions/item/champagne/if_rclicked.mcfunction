#> battle:item/champagne/if_rclicked
# 左クリックしたかチェック
# @internal
# @within right_click:**


execute as @s[scores={main_hand=670040}] at @s run function battle:item/champagne/trigger
