#> battle:item/hummer2/use2
# as armor_stand
# @internal

## 進行方向の保存
scoreboard players operation @s mx = x _
scoreboard players operation @s my = y _
scoreboard players operation @s mz = z _
scoreboard players reset x _
scoreboard players reset y _
scoreboard players reset z _

## 見ている方角の設定
data modify entity @s Rotation set from entity @a[tag=hummer2.target,limit=1] Rotation
data merge entity @s {Air:-1}

## 召喚主の設定
scoreboard players operation @s uuid3 = _ uuid3

## チームの指定
scoreboard players operation @s battle.team = _ battle.team

## スピードの指定
scoreboard players set @s hummer2.speed 100

## ハンマーをもたせる
loot replace entity @s weapon.mainhand loot battle:hummer2/hummer2