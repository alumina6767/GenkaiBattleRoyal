#> battle:item/kasugai/time
#> 某市発動中function

#> 攻撃力上昇
effect give @s strength 1 1 false

#> 時間減少
scoreboard players remove @s kasugai.time 1

#> 時間に応じてパーティクルを出す
execute if entity @s[scores={kasugai.time=1600..2400}] run particle flame ^ ^ ^ 0.3 0.3 0.3 0.05 10 force @a
execute if entity @s[scores={kasugai.time=800..1600}] run particle soul_fire_flame ^ ^ ^ 0.3 0.3 0.3 0.05 10 force @a
execute if entity @s[scores={kasugai.time=0..800}] run particle dust 0.267 0.988 1 1 ^ ^ ^ 0.3 0.3 0.3 0.05 10 force @a

#> カウント
execute if entity @s[scores={kasugai.time=60}] run function battle:item/kasugai/count
execute if entity @s[scores={kasugai.time=40}] run function battle:item/kasugai/count
execute if entity @s[scores={kasugai.time=20}] run function battle:item/kasugai/count

#> 効果終了
execute if entity @s[scores={kasugai.time=1}] run function battle:item/kasugai/end
