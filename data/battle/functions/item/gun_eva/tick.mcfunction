execute as @a[nbt={SelectedItem:{tag:{Gun_eve:1b}}},scores={Rod=1..}] at @s run function battle:item/gun_eva/summon
effect give @s slowness 1 1 true
