#> battle:item/gutitubo/damage/cool_down
# ダメージのクールダウンを減少させる
# @internal

scoreboard players remove @a[scores={cool_down.tori_damage=-2147483648..2147483647}] cool_down.tori_damage 1
scoreboard players reset @a[scores={cool_down.tori_damage=0}] cool_down.tori_damage
execute if entity @a[scores={cool_down.tori_damage=1..},limit=1] run schedule function battle:item/gutitubo/damage/cool_down 1t append