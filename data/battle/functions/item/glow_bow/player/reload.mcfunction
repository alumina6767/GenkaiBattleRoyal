#> battle:item/glow_bow/player/reload
#> 矢の補充をする

#> スコアの増加
scoreboard players add @s glowbow.reload 1

#> リロード完了
execute if entity @s[scores={glowbow.reload=10500}] run function battle:item/glow_bow/player/item/
