#> battle:item/gun_hammer/gun/remove
#> 弾数を減らしてみる
# @internal

#>
# @private
    #declare score_holder ammo 現在の残弾数
    #declare score_holder 1 定数1

# - 弾数取得
execute store result score ammo _ run data get entity @s SelectedItem.tag.ammo
# - 計算スコア設定
scoreboard players set 1 _ 1
# - スコアを1減らす
scoreboard players operation ammo _ -= 1 _
# - スコアの結果をストレージとアイテムtagに代入
execute store result storage minecraft:temp ammo int 1 run scoreboard players get ammo _
loot replace entity @s weapon.mainhand loot battle:gun_hammer/gun
item modify entity @s weapon.mainhand battle:item/gun_hammer/ammo
# - 弾数が0だったら棒に変える
execute if score ammo _ matches 0 run loot replace entity @s weapon.mainhand loot battle:gun_hammer/gun_0

data remove storage minecraft:temp ammo
scoreboard players reset 1 _
scoreboard players reset ammo _