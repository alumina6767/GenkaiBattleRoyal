#> battle:item/hummer/spectate
# シフトで抜け出れないようにする
# @internal

## タグ付け
tag @s add target

scoreboard players operation _ uuid3 = @s uuid3
execute as @e[type=armor_stand,tag=hummer.dummy,distance=..5] if score @s uuid3 = _ uuid3 run spectate @s @a[tag=target,limit=1]

## スコアリセット
scoreboard players reset _ uuid3

## タグを消去
tag @s remove target

## 進捗リセット
advancement revoke @s only battle:item/hummer/spectate