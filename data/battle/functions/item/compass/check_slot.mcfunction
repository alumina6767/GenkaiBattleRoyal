#> battle:item/compass/check_slot
# コンパスのスロットを取得する
# @internal

#scoreboard players reset @s battle.compass.slot
execute store success score _ _ store result score @s battle.compass.slot run data get entity @s Inventory.[{id:"minecraft:compass",tag:{BossTracked:1b}}].Slot
execute if score _ _ matches 0 run scoreboard players reset @s battle.compass.slot
advancement revoke @s only battle:item/compass/check_slot