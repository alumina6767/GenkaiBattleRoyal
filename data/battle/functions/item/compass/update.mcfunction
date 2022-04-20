#> battle:item/compass/update
# 更新
# @internal

## ホットバーのみ更新
execute if score compass.slot battle matches 0 if score @s battle.compass.slot matches 0 run item modify entity @s hotbar.0 battle:compass_update
execute if score compass.slot battle matches 1 if score @s battle.compass.slot matches 1 run item modify entity @s hotbar.1 battle:compass_update
execute if score compass.slot battle matches 2 if score @s battle.compass.slot matches 2 run item modify entity @s hotbar.2 battle:compass_update
execute if score compass.slot battle matches 3 if score @s battle.compass.slot matches 3 run item modify entity @s hotbar.3 battle:compass_update
execute if score compass.slot battle matches 4 if score @s battle.compass.slot matches 4 run item modify entity @s hotbar.4 battle:compass_update
execute if score compass.slot battle matches 5 if score @s battle.compass.slot matches 5 run item modify entity @s hotbar.5 battle:compass_update
execute if score compass.slot battle matches 6 if score @s battle.compass.slot matches 6 run item modify entity @s hotbar.6 battle:compass_update
execute if score compass.slot battle matches 7 if score @s battle.compass.slot matches 7 run item modify entity @s hotbar.7 battle:compass_update
execute if score compass.slot battle matches 8 if score @s battle.compass.slot matches 8 run item modify entity @s hotbar.8 battle:compass_update
execute if score compass.slot battle matches 9 if score @s battle.compass.slot matches 9 run item modify entity @s weapon.offhand battle:compass_update