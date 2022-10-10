#> battle:item/glow_bow/player/victim
#> 発光の矢に当たる

#> effect
effect give @s glowing 9

#> 演出
particle firework ~ ~1 ~ 0.4 0.4 0.4 0.05 30 force @a
playsound entity.firework_rocket.blast master @s ~ ~ ~ 0.3 0

#> adv
advancement revoke @s only battle:item/glow_bow/victim
