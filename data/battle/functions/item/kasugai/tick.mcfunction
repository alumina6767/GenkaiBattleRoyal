#> battle:item/kasugai/tick
#> 某市 常時実行コマンド

#> 人参棒スコアのリセット
execute as @a[scores={kasugai.use=1..},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{kasugai:1b}}}] run scoreboard players set @s kasugai.use 0

#> 効果発動中
execute as @a[scores={kasugai.time=1..}] at @s run function battle:item/kasugai/time