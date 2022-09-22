#> battle:item/cat/tick2
# tick処理 as cat
# @within battle:item/cat/tick

## スコア加算
scoreboard players add @s battle 1

## 猫を減速させる
execute if score @s battle matches 20..50 run data merge entity @s {Motion:[0.0,-0.5,0.0]}
execute if score @s battle matches 51..80 run data merge entity @s {Motion:[0.0,-0.4,0.0]}
execute if score @s battle matches 81..100 run data merge entity @s {Motion:[0.0,-0.3,0.0]}
execute if score @s battle matches 101..110 run data merge entity @s {Motion:[0.0,-0.2,0.0]}
execute if score @s battle matches 111..999 run data merge entity @s {Motion:[0.0,-0.05,0.0]}

## 向きを修正
execute if score @s battle matches ..999 run data modify storage tmp Rotation set value [0f,0f]
execute if score @s battle matches ..999 store result storage tmp Rotation[0] float 1 run scoreboard players get @s yaw
execute if score @s battle matches ..999 store result storage tmp Rotation[1] float 1 run scoreboard players get @s pitch
execute if score @s battle matches ..999 run data modify entity @s Rotation set from storage tmp Rotation
execute if score @s battle matches ..999 run data merge entity @s {Air:-1}

## パーティクル
#execute if score @s battle matches 101..110 run particle smoke ~ ~-0.5 ~ 1 0 1 0.01 2 force
#particle campfire_cosy_smoke ~ ~1 ~ ^ ^1000 ^ 0.001 0 force
#execute if score @s battle matches 20.. rotated 0 0 run particle campfire_cosy_smoke ~ ~-0.5 ~ ~ ~-100 ~ 0.001 0 force

execute if score @s battle matches 111.. run particle large_smoke ~ ~-0.5 ~ 1 0 1 0.01 2 force
#execute if score @s battle matches 111.. run particle campfire_cosy_smoke ~ ~-0.5 ~ 1 0 1 0.01 2 force
execute if score @s battle matches 51.. if predicate battle:chance/0.8 rotated 0 0 run particle campfire_cosy_smoke ~0.5 ~-0.5 ~ ~50 ~-1000 ~ 0.001 0 force
execute if score @s battle matches 51.. if predicate battle:chance/0.8 rotated 0 0 run particle campfire_cosy_smoke ~-0.5 ~-0.5 ~ ~-50 ~-1000 ~ 0.001 0 force
execute if score @s battle matches 51.. if predicate battle:chance/0.8 rotated 0 0 run particle campfire_cosy_smoke ~ ~-0.5 ~0.5 ~ ~-1000 ~50 0.001 0 force
execute if score @s battle matches 51.. if predicate battle:chance/0.8 rotated 0 0 run particle campfire_cosy_smoke ~ ~-0.5 ~-0.5 ~ ~-1000 ~-50 0.001 0 force

## ジェット音
execute if score @s battle matches 51..999 if predicate battle:chance/0.2 run playsound entity.cat.ambient player @a ~ ~ ~ 0.8 1.0 0.0

## 着地しているか
execute if entity @s[scores={battle=..999}] if entity @s[nbt={OnGround:1b}] run scoreboard players set @s battle 999

## 着地していたら
execute if score @s battle matches 1000 run playsound item.trident.thunder player @a ~ ~ ~ 1.0 0.5 0.0
execute if score @s battle matches 1000 run data merge entity @s {Sitting:1b}
execute if score @s battle matches 1000..1059 run tp @s ~ ~ ~ ~ ~

## 着時後停止 アイテムを置いて そして射出
execute if score @s battle matches 1030 run summon item ^ ^1.0 ^1.0 {Item:{id:"stone",Count:1b},Glowing:1b}
execute if score @s battle matches 1030 run playsound entity.chicken.egg player @a ~ ~ ~ 1.0 1.0 0.0

execute if score @s battle matches 1060..1100 run data merge entity @s {Motion:[0.0,0.1,0.0]}

execute if score @s battle matches 1101 run data merge entity @s {Motion:[0.0,5.0,0.0]}

## 射出ジェット音
execute if score @s battle matches 1060..1139 if predicate battle:chance/0.2 run playsound entity.cat.ambient player @a ~ ~ ~ 0.8 1.0 0.0
execute if score @s battle matches 1101 run playsound entity.firework_rocket.launch player @a ~ ~ ~ 1.0 1.5 0.0

## kill
execute if score @s battle matches 1140 run kill @s
