#> battle:item/gutitubo/damage/cool_down
# ダメージのクールダウンを減少させる
# @internal

scoreboard players remove @a[scores={tori.damage_cd=1..}] tori.damage_cd 1
scoreboard players reset @a[scores={tori.damage_cd=..0}] tori.damage_cd
execute if entity @a[scores={tori.damage_cd=1..},limit=1] run schedule function battle:item/gutitubo/damage/cool_down 1t append