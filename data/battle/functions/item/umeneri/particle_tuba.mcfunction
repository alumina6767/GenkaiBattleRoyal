#> battle:item/umeneri/particle_tuba
# つばのパーティクル
# @internal

## スコアリセット
scoreboard players set _ _ 0

## パーティクル
execute at @e[type=llama_spit,tag=tarako.tuba.poison] run particle dust 1 0.529 0.906 1 ~ ~ ~ 0.1 0.1 0.1 1 3 force
execute store success score _ _ at @e[type=llama_spit,tag=tarako.tuba] run particle dust 0.529 0.914 1 2 ~ ~ ~ 0 0 0 1 3 force

## ループ
execute if score _ _ matches 1 run schedule function battle:item/umeneri/particle_tuba 1t append