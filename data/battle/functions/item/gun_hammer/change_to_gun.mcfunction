#> battle:item/gun_hammer/change_to_gun
#> アイテムを水鉄砲に変更
# @internal

## メインハンドが空のとき武器をハンマーに変更
execute if entity @s[nbt=!{SelectedItem:{}}] run tag @s add weapon.change
# 残りの弾数を保存
execute store result storage minecraft:temp ammo int 1 run data get entity @s Inventory[{Slot:-106b}].tag.ammo
execute store result score _ _ run data get storage minecraft:temp ammo
# アイテムを変更
execute if entity @s[tag=weapon.change] run item replace entity @s weapon.offhand with air
execute if entity @s[tag=weapon.change] run playsound block.piston.contract master @s ~ ~ ~ 0.3 2
# 弾数があればクロスボウ、なければ棒
execute if entity @s[tag=weapon.change] if score _ _ matches 1.. run loot replace entity @s weapon.mainhand loot battle:item/gun_hammer/gun
execute if entity @s[tag=weapon.change] if score _ _ matches 0 run loot replace entity @s weapon.mainhand loot battle:item/gun_hammer/gun_0
# 弾数を設定
execute if entity @s[tag=weapon.change] run item modify entity @s weapon.mainhand battle:item/gun_hammer/ammo

# -reset
tag @s[tag=weapon.change] remove weapon.change
data remove storage minecraft:temp ammo
scoreboard players reset _ _ 
advancement revoke @s only battle:item/gun_hammer/change_to_gun