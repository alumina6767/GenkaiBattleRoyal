#> battle:item/hummer2/dash_end
# 突進の終了
# @internal

## ゲームモードを戻す
execute store result score _ _ run data get entity @s previousPlayerGameType 1
execute if score _ _ matches 0 run gamemode survival @s
execute if score _ _ matches 1 run gamemode creative @s
execute if score _ _ matches 2 run gamemode adventure @s

## 人形をkill
scoreboard players operation _ uuid3 = @s uuid3
execute as @e[type=armor_stand,tag=hummer2] if score @s uuid3 = _ uuid3 run kill @s

## スコアのリセット
scoreboard players reset _ uuid3
scoreboard players reset @s hummer2.dash

## 使用クールダウンの設定
scoreboard players set @s hummer2.use_cd 100
schedule function battle:item/hummer2/use_cd 1t append
