#> battle:effect/jump_small_2/particle
# ジャンプの起動のパーティクル
# @internal

scoreboard players remove @a[scores={battle.jump_pad.par=1..}] battle.jump_pad.par 1
execute at @a[scores={battle.jump_pad.par=0..}] run particle dust 1 1 1 1 ~ ~ ~ 0.1 0.1 0.1 0.1 5 force
scoreboard players reset @a[scores={battle.jump_pad.par=..0}] battle.jump_pad.par
execute if entity @a[scores={battle.jump_pad.par=1..}] run schedule function battle:effect/jump_small_2/particle 1t