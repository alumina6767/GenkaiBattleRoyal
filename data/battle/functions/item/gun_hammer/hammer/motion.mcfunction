#> battle:item/gun_hammer/hammer/motion
#> Motion設定
# @internal

# - 設定用マーカー設置
    forceload add 0 0
    execute rotated as @s positioned 0.0 0.0 0.0 run summon marker ^ ^0.6 ^2 {Tags:["Motion.set"]}
# - Motion設定
    execute as @e[type=armor_stand,tag=new,tag=ThrowHammer] run data modify entity @s Motion set from entity @e[type=marker,tag=Motion.set,limit=1] Pos
# - 削除
    kill @e[type=marker,tag=Motion.set]
    tag @e[type=armor_stand,tag=new] remove new
    forceload remove 0 0