#> battle:item/glow_bow/tick
#> 常時実行

#> プレイヤーに対して実行
# 弓を持っているプレイヤーに矢を渡す
execute as @a[predicate=battle:item/glow_bow/hand] run function battle:item/glow_bow/player/having
# 弓を持っていないプレイヤーから矢を消す
execute as @a[predicate=!battle:item/glow_bow/hand] run clear @s arrow{GBarrow:1b}
execute as @a[predicate=!battle:item/glow_bow/hand] run tag @s remove GBarrow
execute as @a[predicate=!battle:item/glow_bow/hand] run scoreboard players set @s glowbow.shot 0

#> 矢に対して実行
# 矢にパーティクル
execute as @e[type=arrow,tag=GlowArrow] at @s run particle firework ~ ~ ~ 0 0 0 0 1 force @a
execute as @e[type=arrow,tag=GlowArrow] at @s run particle dust 0.012 0.447 0.078 1 ~ ~ ~ 0.1 0.1 0.1 0 5 force @a

#> リロード
execute as @a[predicate=battle:item/glow_bow/inventory] run function battle:item/glow_bow/player/reload