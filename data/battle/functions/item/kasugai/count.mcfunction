#> battle:item/kasugai/count
#> カウントパーティクル&サウンド

#> パーティクル
particle block ice ~ ~1 ~ 0.5 0.5 0.5 0.05 150 force @a
#> サウンド
execute if entity @s[scores={kasugai.time=60}] run playsound block.glass.break master @a ~ ~ ~ 0.25 2
execute if entity @s[scores={kasugai.time=40}] run playsound block.glass.break master @a ~ ~ ~ 0.25 1.5
execute if entity @s[scores={kasugai.time=20}] run playsound block.glass.break master @a ~ ~ ~ 0.25 1
