#> battle:item/pyoniper/reload/end2
# すべてのスロットのアイテムを置換
# @internal

## スロット番号の取り出し
execute store result score _ _ run data get storage tmp target_slots[-1] 1

## アイテムの置き換え
execute if score _ _ matches 9 run loot replace entity @s inventory.0 loot battle:pyoniper/pyoniper
execute if score _ _ matches 10 run loot replace entity @s inventory.1 loot battle:pyoniper/pyoniper
execute if score _ _ matches 11 run loot replace entity @s inventory.2 loot battle:pyoniper/pyoniper
execute if score _ _ matches 12 run loot replace entity @s inventory.3 loot battle:pyoniper/pyoniper
execute if score _ _ matches 13 run loot replace entity @s inventory.4 loot battle:pyoniper/pyoniper
execute if score _ _ matches 14 run loot replace entity @s inventory.5 loot battle:pyoniper/pyoniper
execute if score _ _ matches 15 run loot replace entity @s inventory.6 loot battle:pyoniper/pyoniper
execute if score _ _ matches 16 run loot replace entity @s inventory.7 loot battle:pyoniper/pyoniper
execute if score _ _ matches 17 run loot replace entity @s inventory.8 loot battle:pyoniper/pyoniper
execute if score _ _ matches 18 run loot replace entity @s inventory.9 loot battle:pyoniper/pyoniper
execute if score _ _ matches 19 run loot replace entity @s inventory.10 loot battle:pyoniper/pyoniper
execute if score _ _ matches 20 run loot replace entity @s inventory.11 loot battle:pyoniper/pyoniper
execute if score _ _ matches 21 run loot replace entity @s inventory.12 loot battle:pyoniper/pyoniper
execute if score _ _ matches 22 run loot replace entity @s inventory.13 loot battle:pyoniper/pyoniper
execute if score _ _ matches 23 run loot replace entity @s inventory.14 loot battle:pyoniper/pyoniper
execute if score _ _ matches 24 run loot replace entity @s inventory.15 loot battle:pyoniper/pyoniper
execute if score _ _ matches 25 run loot replace entity @s inventory.16 loot battle:pyoniper/pyoniper
execute if score _ _ matches 26 run loot replace entity @s inventory.17 loot battle:pyoniper/pyoniper
execute if score _ _ matches 27 run loot replace entity @s inventory.18 loot battle:pyoniper/pyoniper
execute if score _ _ matches 28 run loot replace entity @s inventory.19 loot battle:pyoniper/pyoniper
execute if score _ _ matches 29 run loot replace entity @s inventory.20 loot battle:pyoniper/pyoniper
execute if score _ _ matches 30 run loot replace entity @s inventory.21 loot battle:pyoniper/pyoniper
execute if score _ _ matches 31 run loot replace entity @s inventory.22 loot battle:pyoniper/pyoniper
execute if score _ _ matches 32 run loot replace entity @s inventory.23 loot battle:pyoniper/pyoniper
execute if score _ _ matches 33 run loot replace entity @s inventory.24 loot battle:pyoniper/pyoniper
execute if score _ _ matches 34 run loot replace entity @s inventory.25 loot battle:pyoniper/pyoniper
execute if score _ _ matches 35 run loot replace entity @s inventory.26 loot battle:pyoniper/pyoniper
execute if score _ _ matches 0 run loot replace entity @s hotbar.0 loot battle:pyoniper/pyoniper
execute if score _ _ matches 1 run loot replace entity @s hotbar.1 loot battle:pyoniper/pyoniper
execute if score _ _ matches 2 run loot replace entity @s hotbar.2 loot battle:pyoniper/pyoniper
execute if score _ _ matches 3 run loot replace entity @s hotbar.3 loot battle:pyoniper/pyoniper
execute if score _ _ matches 4 run loot replace entity @s hotbar.4 loot battle:pyoniper/pyoniper
execute if score _ _ matches 5 run loot replace entity @s hotbar.5 loot battle:pyoniper/pyoniper
execute if score _ _ matches 6 run loot replace entity @s hotbar.6 loot battle:pyoniper/pyoniper
execute if score _ _ matches 7 run loot replace entity @s hotbar.7 loot battle:pyoniper/pyoniper
execute if score _ _ matches 8 run loot replace entity @s hotbar.8 loot battle:pyoniper/pyoniper

## 処理したスロット番号の削除
data remove storage tmp target_slots[-1]

## ループ
execute if data storage tmp target_slots[-1] run function battle:item/pyoniper/reload/end2