#> battle:remove_mainhand
# メインハンドを消す
# @internal

scoreboard players set check_inventory battle 0
item modify entity @s weapon.mainhand share:remove_count 
scoreboard players set check_inventory battle 1