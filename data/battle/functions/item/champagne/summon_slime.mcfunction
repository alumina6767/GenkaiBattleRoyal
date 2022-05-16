#> battle:item/champagne/summon_slime
# 左クリック用のスライムの召喚
# @internal

#>
# @internal
    #declare tag champagne

## スライムを召喚
summon slime ~ ~-0.5 ~ {NoGravity:1b,Silent:1b,DeathTime:19,DeathLootTable:"empty",NoAI:1b,Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000}],Size:0,Tags:["champagne","new"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:100,ShowParticles:0b}]}
#tp @e[type=slime,tag=new] ~ ~ ~

## 召喚主のuuidを保存
scoreboard players operation @e[type=slime,tag=new,dx=0] uuid3 = @s uuid3

## 当たり判定を消す
team join no_collision @e[type=slime,tag=new,dx=0]

## タグを削除
tag @e[type=slime,tag=new,dx=0] remove new