#> battle:effect/barrier/summon
# summon
# @internal

#>
# @internal
    #declare entity 00000006-0000-0007-0000-000100000000 回転軸
    #declare entity 00000006-0000-0007-0000-000100000001 Aのボスの盾
    #declare entity 00000006-0000-0007-0000-000100000002 Bのボスの盾
    #declare entity 00000006-0000-0007-0000-000100000003 Cのボスの盾
    #declare entity 00000006-0000-0007-0000-000100000004 Dのボスの盾
    #declare entity 00000006-0000-0007-0000-000100000005 Eのボスの盾
    #declare entity 00000006-0000-0007-0000-000100000006 Fのボスの盾
    #declare entity 00000006-0000-0007-0000-000100000007 Gのボスの盾
    #declare tag battle.boss.shield


## 回転軸
summon marker 0.0 0.0 0.0 {Tags:["battle.boss.shield"],UUID:[I;6,7,1,0]}

## 盾
summon armor_stand ~ ~ ~ {Pose:{RightArm:[90f,-90f,0f]},Tags:["battle.boss.shield"], UUID:[I;6,7,1,1],Invisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,HandItems:[{id:"minecraft:shield",Count:1b},{}]}
summon armor_stand ~ ~ ~ {Pose:{RightArm:[90f,-90f,0f]},Tags:["battle.boss.shield"], UUID:[I;6,7,1,2],Invisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,HandItems:[{id:"minecraft:shield",Count:1b},{}]}
summon armor_stand ~ ~ ~ {Pose:{RightArm:[90f,-90f,0f]},Tags:["battle.boss.shield"], UUID:[I;6,7,1,3],Invisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,HandItems:[{id:"minecraft:shield",Count:1b},{}]}
summon armor_stand ~ ~ ~ {Pose:{RightArm:[90f,-90f,0f]},Tags:["battle.boss.shield"], UUID:[I;6,7,1,4],Invisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,HandItems:[{id:"minecraft:shield",Count:1b},{}]}
summon armor_stand ~ ~ ~ {Pose:{RightArm:[90f,-90f,0f]},Tags:["battle.boss.shield"], UUID:[I;6,7,1,5],Invisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,HandItems:[{id:"minecraft:shield",Count:1b},{}]}
summon armor_stand ~ ~ ~ {Pose:{RightArm:[90f,-90f,0f]},Tags:["battle.boss.shield"], UUID:[I;6,7,1,6],Invisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,HandItems:[{id:"minecraft:shield",Count:1b},{}]}
summon armor_stand ~ ~ ~ {Pose:{RightArm:[90f,-90f,0f]},Tags:["battle.boss.shield"], UUID:[I;6,7,1,7],Invisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,HandItems:[{id:"minecraft:shield",Count:1b},{}]}
