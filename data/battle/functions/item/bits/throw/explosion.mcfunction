#> battle:item/bits/throw/explosion
# 爆発
# @internal

## クリーパーの召喚
summon creeper ~ 200 ~ {Fire:1,NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Fuse:2,ignited:1b,Tags:["new"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1,ShowParticles:0b}]}

## 透明化エフェクトがちゃんと掛かるようにtp
tp @e[type=creeper,tag=new] ~ ~ ~

#region クリーパーに名前をつける
# ## 召喚主にタグ付け
# tag @s add target 

# ## 召喚主の名前の保存
# data modify block 0 -63 0 Text1 set value '{"selector":"@a[tag=target]"}'

# ## クリーパーに召喚主の名前を付ける
# data modify entity @e[type=creeper,tag=new,dx=0,limit=1] CustomName set from block 0 -63 0 Text1

# ##タグを消去
# tag @s add target
#endregion

## デスログ
scoreboard players operation @a[distance=..10] battle.hurt_by = @s uuid3

execute if entity @s[tag=100bits] run particle dust 0.729 0 0.973 2.5 ~ ~ ~ 1.5 1.5 1.5 0.1 50 force
execute if entity @s[tag=100bits] run particle dust 0.902 0.604 1 2 ~ ~ ~ 1.5 1.5 1.5 0.1 50 force
execute if entity @s[tag=100bits] run particle end_rod ~ ~ ~ 1.5 1.5 1.5 0.1 50 force
execute if entity @s[tag=100bits] run scoreboard players set @a[distance=..20] battle.hurt_with 670000

execute if entity @s[tag=1000bits] run particle dust 0.153 1 0.631 2.5 ~ ~ ~ 2 2 2 0.1 70 force
execute if entity @s[tag=1000bits] run particle dust 0.659 1 0.91 2 ~ ~ ~ 2 2 2 0.1 70 force
execute if entity @s[tag=1000bits] run particle end_rod ~ ~ ~ 2 2 2 0.1 70 force
execute if entity @s[tag=1000bits] run data merge entity @e[type=creeper,tag=new,dx=0,limit=1] {ExplosionRadius:4b}
execute if entity @s[tag=1000bits] run scoreboard players set @a[distance=..20] battle.hurt_with 670001

execute if entity @s[tag=5000bits] run particle dust 0.31 0.345 1 2.5 ~ ~ ~ 2.5 2.5 2.5 0.1 90 force
execute if entity @s[tag=5000bits] run particle dust 0.71 0.851 1 2 ~ ~ ~ 2.5 2.5 2.5 0.1 90 force
execute if entity @s[tag=5000bits] run particle end_rod ~ ~ ~ 2.5 2.5 2.5 0.1 90 force
execute if entity @s[tag=5000bits] run data merge entity @e[type=creeper,tag=new,dx=0,limit=1] {ExplosionRadius:5b}
execute if entity @s[tag=5000bits] run scoreboard players set @a[distance=..20] battle.hurt_with 670002

execute if entity @s[tag=10000bits] run particle dust 1 0.153 0.153 2.5 ~ ~ ~ 3 3 3 0.1 110 force
execute if entity @s[tag=10000bits] run particle dust 1 0.694 0.694 2 ~ ~ ~ 3 3 3 0.1 110 force
execute if entity @s[tag=10000bits] run particle end_rod ~ ~ ~ 3 3 3 0.1 110 force
execute if entity @s[tag=10000bits] run data merge entity @e[type=creeper,tag=new,dx=0,limit=1] {ExplosionRadius:6b}
execute if entity @s[tag=10000bits] run scoreboard players set @a[distance=..20] battle.hurt_with 670003

execute if entity @s[tag=100000bits] run particle dust 1 0.718 0.153 2.5 ~ ~ ~ 3.5 3.5 3.5 0.1 130 force
execute if entity @s[tag=100000bits] run particle dust 0.953 0.992 0.651 2 ~ ~ ~ 3.5 3.5 3.5 0.1 130 force
execute if entity @s[tag=100000bits] run particle end_rod ~ ~ ~ 3.5 3.5 3.5 0.1 130 force
execute if entity @s[tag=100000bits] run data merge entity @e[type=creeper,tag=new,dx=0,limit=1] {ExplosionRadius:7b}
execute if entity @s[tag=100000bits] run scoreboard players set @a[distance=..20] battle.hurt_with 670004

## キル
kill @s

## タグの消去
tag @e[type=creeper,tag=new,dx=0] remove new
