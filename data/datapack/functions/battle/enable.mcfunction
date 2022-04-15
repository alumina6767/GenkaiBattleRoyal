#> datapack:battle/enable
# データパックをON
# @internal

execute if score battle datapack matches 1 run tellraw @s "データパックbattleの動作は既に有効です。"
execute unless score battle datapack matches 1 run tellraw @s "データパックbattleの動作を有効にしました。"
scoreboard players set battle datapack 1