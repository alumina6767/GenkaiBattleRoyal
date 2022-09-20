#> battle:item/kasugai/time
#> 某市発動中function

#> 攻撃力上昇
effect give @s strength 1 1 false

#> 時間減少
scoreboard players remove @s kasugai.time 1

#> 効果終了
execute if entity @s[scores={kasugai.time=1}] run function battle:item/kasugai/end
