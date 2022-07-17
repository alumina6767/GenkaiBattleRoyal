#> battle:item/gun_hammer/hammer/explode
#> ハンマーが爆破する
# @internal

# - パーティクル
particle explosion ~ ~1 ~ 0.8 0.8 0.8 0.05 20 force @a
particle wax_on ~ ~1 ~ 0.8 0.8 0.8 0.05 60 force @a

# - 音
playsound entity.generic.explode master @a ~ ~ ~ 0.25 2
playsound entity.firework_rocket.twinkle master @a ~ ~ ~ 0.25 2

# - ダメージ
execute as @a[distance=..2.5,gamemode=!spectator,gamemode=!creative] at @s run function battle:item/gun_hammer/hammer/damage

# - kill
kill @e[type=armor_stand,tag=HammerModel,limit=1,sort=nearest]
kill @s
