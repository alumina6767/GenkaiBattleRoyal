#> battle:item/champagne/rand_circle
# 円形の乱数を生成するまでループ
# @internal

## x
function #math:random
execute store result score rand_x _ run data get storage math: out 1
scoreboard players operation rand_x _ %= 4000 _
scoreboard players operation rand_x _ -= 2000 _

## y
function #math:random
execute store result score rand_y _ run data get storage math: out 1
scoreboard players operation rand_y _ %= 4000 _
scoreboard players operation rand_y _ -= 2000 _

## x^2 + y^2 > r^2 なら loop
scoreboard players operation x^2 _ = rand_x _
scoreboard players operation x^2 _ *= x^2 _

scoreboard players operation y^2 _ = rand_y _
scoreboard players operation y^2 _ *= y^2 _

scoreboard players operation x^2 _ += y^2 _

execute if score x^2 _ matches 4000001.. run function battle:item/champagne/rand_circle