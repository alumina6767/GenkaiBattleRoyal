#> battle:item/champagne/if_lclicked
# 左クリックしたかチェック
# @internal
# @within right_click:**

## todo 防具立てのMotionはつかいたくないが...
execute as @s[scores={main_hand=670040}] at @s run function battle:item/champagne/shoot
