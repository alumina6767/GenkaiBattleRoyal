#> battle:item/champagne/check_hand
# 手持ちを確認
# @internal
# @within share:sneaking

execute if score @s main_hand matches 670040 run function battle:item/champagne/holding
