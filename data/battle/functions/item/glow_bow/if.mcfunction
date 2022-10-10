#> battle:item/glow_bow/if
#> [発光棘弓]を打ったときに実行されるコマンド

#> 残弾の確認＋どっちの手の矢を消費したかを入手
execute store result score _ _ if entity @s[scores={main_hand=670100}] run data get entity @s SelectedItem.tag.ammo

execute if score _ _ matches -2147483648..2147483647 run tag @s add weapon.mainhand
execute unless score _ _ matches -2147483648..2147483647 run tag @s add weapon.offhand

execute unless score _ _ matches -2147483648..2147483647 run data get entity @s SelectedItem.tag.ammo

#> 残弾がない
execute if score _ _ matches 0 run function battle:item/glow_bow/shortage

#> 発射可能！
execute if score _ _ matches 1.. run function battle:item/glow_bow/shot

#> スコアのリセット
scoreboard players set _ _ 0

#> 矢をあげる
execute if entity @s[tag=!GBarrow] run give @s arrow 1

tag @s remove weapon.mainhand
tag @s remove weapon.offhand

# スコアリセット
scoreboard players set @a glowbow.shot 0

advancement revoke @s only battle:item/glow_bow/shot