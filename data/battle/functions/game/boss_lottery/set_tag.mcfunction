#> battle:game/boss_lottery/set_tag
# ボスタグをつける
# @internal

tag @r[tag=target,tag=!battle.boss] add battle.boss
scoreboard players remove _ _ 1
execute if score _ _ matches 1.. run function battle:game/boss_lottery/set_tag
