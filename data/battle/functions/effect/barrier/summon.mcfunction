#> battle:effect/barrier/summon
# summon
# @internal

#>
# @internal
    #declare entity 00000006-0000-0007-0000-000100000000
    #declare entity 00000006-0000-0007-0000-000100000001
    #declare tag battle.boss.shield


summon marker 0.0 0.0 0.0 {Tags:["battle.boss.shield"],UUID:[I;6,7,1,0]}
summon armor_stand ~ ~ ~ {Pose:{RightArm:[90f,-90f,0f]},Tags:["battle.boss.shield"], UUID:[I;6,7,1,1],Invisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,HandItems:[{id:"minecraft:shield",Count:1b},{}]}