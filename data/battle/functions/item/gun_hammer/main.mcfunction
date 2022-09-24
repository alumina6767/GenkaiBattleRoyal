#> battle:item/gun_hammer/main
# @internal

# - スコアボード設定
scoreboard players remove @a[scores={gunhammer.rate=1..}] gunhammer.rate 1

# - モデルのTP
execute if entity @e[type=armor_stand,tag=HammerModel] run function battle:item/gun_hammer/hammer/hammer