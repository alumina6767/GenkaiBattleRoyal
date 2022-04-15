#> battle:death/
# 死亡時
# @internal

## Aチームが死んだ時
execute as @s[team=A] run function battle:death/a

## スコアを戻す
scoreboard players reset @s battle.death