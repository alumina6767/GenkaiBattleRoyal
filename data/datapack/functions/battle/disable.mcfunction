#> datapack:battle/disable
# データパックをOFF
# @internal

execute if score battle datapack matches 0 run tellraw @s "データパックbattleの動作は既に停止しています。"
execute unless score battle datapack matches 0 run tellraw @s "データパックbattleの動作を停止しました。"
scoreboard players set battle datapack 0