#> battle:effect/high_knockback/clear
# エフェクトを消す
# @within battle:effect/high_knockback/**

### エフェクトを消す
effect clear @s levitation

### タグを消す
tag @s remove high_knockbacked

### スコアをリセット
scoreboard players reset @s high_knockback